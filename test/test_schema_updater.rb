# frozen_string_literal: true

require "digest"
require "tempfile"
require_relative "codegen_test_helper"

class TestSchemaUpdater < Minitest::Test
  Response = Struct.new(:code, :body) do
    def success?
      code.between?(200, 299)
    end
  end

  FIXTURE = File.read(File.expand_path("fixtures/codegen/schema_prefix.ttl", __dir__))
  URL = "https://schema.org/version/30.0/schemaorg-all-https.ttl"

  def test_success_uses_canonical_url_headers_and_last_calls_replacer
    calls = []
    replacer = Object.new
    replacer.define_singleton_method(:write) do |target, content|
      calls << [:write, target, content]
      File.write(target, content)
    end
    Tempfile.create("schema-target") do |file|
      file.write("original")
      file.flush
      updater = SchemaOrg::Codegen::SchemaUpdater.new(
        downloader: lambda do |url|
          calls << [:download, url]
          Response.new(200, FIXTURE)
        end,
        replacer:,
        target: file.path
      )

      assert updater.update("v30.0")
      assert_equal URL, calls.first.last
      assert_equal :write, calls.last.first
      assert_equal 2, calls.length
      assert_equal "# schema_org_release: v30.0\n# schema_org_source: #{URL}\n", File.read(file.path).lines.first(2).join
    end
  end

  def test_malformed_version_is_rejected_before_download
    downloaded = false
    updater = SchemaOrg::Codegen::SchemaUpdater.new(
      downloader: ->(_url) { downloaded = true },
      replacer: SchemaOrg::Codegen::Writer.new
    )

    assert_raises(SchemaOrg::Codegen::ValidationError) { updater.update("30.0") }
    refute downloaded
  end

  def test_failures_preserve_target_bytes
    failures = [
      -> { Response.new(200, "#{FIXTURE}\nschema:bad a schema:Property ; schema:domainIncludes schema:MissingDomain ; schema:rangeIncludes schema:Thing .\n") },
      -> { Response.new(200, "") },
      -> { Response.new(200, "not turtle") },
      -> { Response.new(200, "#{FIXTURE}\nschema:Child rdfs:subClassOf schema:MissingParent .\n") }
    ]
    failures.each_with_index do |download, index|
      Tempfile.create("schema-target") do |file|
        file.write("original")
        file.flush
        before = File.binread(file.path)
        digest = Digest::SHA256.hexdigest(before)
        updater = SchemaOrg::Codegen::SchemaUpdater.new(
          downloader: ->(_url) { download.call },
          replacer: SchemaOrg::Codegen::Writer.new,
          target: file.path
        )

        assert_raises(SchemaOrg::Codegen::ValidationError, "failure #{index}") { updater.update("v30.0") }
        assert_equal before, File.binread(file.path)
        assert_equal digest, Digest::SHA256.file(file.path).hexdigest
      end
    end
  end

  def test_raising_replacer_preserves_target_bytes
    Tempfile.create("schema-target") do |file|
      file.write("original")
      file.flush
      replacer = Object.new
      replacer.define_singleton_method(:write) { |_target, _content| raise "replace failed" }
      updater = SchemaOrg::Codegen::SchemaUpdater.new(
        downloader: ->(_url) { Response.new(200, FIXTURE) },
        replacer:,
        target: file.path
      )
      before = File.binread(file.path)

      assert_raises(RuntimeError) { updater.update("v30.0") }
      assert_equal before, File.binread(file.path)
    end
  end
end
