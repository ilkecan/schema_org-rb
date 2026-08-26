# frozen_string_literal: true

require "tempfile"
require_relative "codegen_test_helper"

class TestSchemaVersion < Minitest::Test
  def test_requires_exact_release_and_source_headers
    Tempfile.create("schema") do |file|
      file.write("# schema_org_release: v30.0\n# schema_org_source: https://schema.org/version/30.0/schemaorg-all-https.ttl\n")
      file.flush

      version = SchemaOrg::Codegen::Models::SchemaVersion.current(schema_file: file.path)

      assert_equal "v30.0", version.schema_version
      assert_equal "https://schema.org/version/30.0/schemaorg-all-https.ttl", version.schema_source
    end
  end

  def test_rejects_duplicate_or_reordered_headers
    Tempfile.create("schema") do |file|
      file.write("# schema_org_source: https://schema.org/version/30.0/schemaorg-all-https.ttl\n# schema_org_release: v30.0\n# schema_org_release: v30.0\n")
      file.flush

      assert_raises(SchemaOrg::Codegen::ValidationError) do
        SchemaOrg::Codegen::Models::SchemaVersion.current(schema_file: file.path)
      end
    end
  end
end
