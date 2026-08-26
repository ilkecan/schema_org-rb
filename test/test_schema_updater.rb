# frozen_string_literal: true

require "tempfile"
require_relative "codegen_test_helper"

class TestSchemaUpdater < Minitest::Test
  Response = Struct.new(:code, :body) do
    def success?
      code.between?(200, 299)
    end
  end

  FIXTURE = File.read(File.expand_path("fixtures/schema.ttl", __dir__))

  def test_updates_only_after_the_complete_snapshot_validates
    Tempfile.create("schema-target") do |file|
      file.write("original")
      file.flush
      requested_url = nil
      updater = SchemaOrg::Codegen::SchemaUpdater.new(
        downloader: lambda do |url|
          requested_url = url
          Response.new(200, FIXTURE)
        end,
        replacer: SchemaOrg::Codegen::Writer.new,
        target: file.path
      )

      assert updater.update("v30.0")
      assert_equal "https://schema.org/version/30.0/schemaorg-all-https.ttl", requested_url
      content = File.read(file.path)
      assert_match(/\A# schema_org_release: v30\.0\n# schema_org_source: https:\/\/schema\.org\/version\/30\.0\/schemaorg-all-https\.ttl\n/, content)
    end
  end

  def test_rejects_bad_download_without_touching_target
    Tempfile.create("schema-target") do |file|
      file.write("original")
      file.flush
      updater = SchemaOrg::Codegen::SchemaUpdater.new(
        downloader: ->(_url) { Response.new(500, "nope") },
        replacer: SchemaOrg::Codegen::Writer.new,
        target: file.path
      )

      assert_raises(SchemaOrg::Codegen::ValidationError) { updater.update("v30.0") }
      assert_equal "original", File.read(file.path)
    end
  end
end
