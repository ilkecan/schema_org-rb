# frozen_string_literal: true

require "tempfile"
require_relative "codegen_test_helper"

class TestSchemaVersion < Minitest::Test
  VALID_RELEASE = "# schema_org_release: v30.0\n"
  VALID_SOURCE = "# schema_org_source: https://schema.org/version/30.0/schemaorg-all-https.ttl\n"

  def test_accepts_injected_valid_schema_file
    with_content(VALID_RELEASE + VALID_SOURCE) do |file|
      version = SchemaOrg::Codegen::Models::SchemaVersion.current(schema_file: file.path)
      assert_equal "v30.0", version.schema_version
      assert_equal "https://schema.org/version/30.0/schemaorg-all-https.ttl", version.schema_source
    end
  end

  def test_rejects_missing_file
    assert_raises(SchemaOrg::Codegen::ValidationError) { SchemaOrg::Codegen::Models::SchemaVersion.current(schema_file: "/missing/schema.ttl") }
  end

  def test_rejects_missing_header
    assert_invalid ""
    assert_invalid VALID_RELEASE
    assert_invalid VALID_SOURCE
  end

  def test_rejects_reordered_headers
    assert_invalid VALID_SOURCE + VALID_RELEASE
  end

  def test_rejects_duplicate_headers
    assert_invalid VALID_RELEASE + VALID_SOURCE + VALID_RELEASE
    assert_invalid VALID_RELEASE + VALID_SOURCE + VALID_SOURCE
  end

  def test_rejects_malformed_versions_and_sources
    assert_invalid "# schema_org_release: 30.0\n#{VALID_SOURCE}"
    assert_invalid "# schema_org_release: v30.0\n# schema_org_source: http://schema.org/version/30.0/schemaorg-all-https.ttl\n"
    assert_invalid "# schema_org_release: v30.0\n# schema_org_source: https://schema.org/version/x/schemaorg-all-https.ttl\n"
  end

  def test_rejects_release_source_version_mismatch
    assert_invalid "# schema_org_release: v29.0\n#{VALID_SOURCE}"
    assert_invalid "#{VALID_RELEASE}# schema_org_source: https://schema.org/version/29.0/schemaorg-all-https.ttl\n"
  end

  private

  def assert_invalid(content)
    with_content(content) do |file|
      assert_raises(SchemaOrg::Codegen::ValidationError) do
        SchemaOrg::Codegen::Models::SchemaVersion.current(schema_file: file.path)
      end
    end
  end

  def with_content(content)
    Tempfile.create("schema") do |file|
      file.write(content)
      file.flush
      yield file
    end
  end
end
