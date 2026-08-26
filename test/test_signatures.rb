# frozen_string_literal: true

require "pathname"
require "rbs"
require "tmpdir"
require_relative "codegen_test_helper"

class TestSignatures < Minitest::Test
  def test_fixture_signature_is_complete_and_valid_rbs
    signature = generate_signature
    source = signature.read
    child = source[/interface _Child\n.*?(?=\n  (?:interface|class) )/m]

    assert_includes child, "def ancestor_property:"
    assert_includes child, "def shared_property:"
    assert_includes child, "def child_property:"

    declarations = RBS::Parser.parse_signature(source)
    assert_operator declarations.length, :>, 0
    loader = RBS::EnvironmentLoader.new
    loader.add(library: "date")
    loader.add(path: signature)
    environment = RBS::Environment.from_loader(loader).resolve_type_names
    builder = RBS::DefinitionBuilder.new(env: environment)
    assert builder.build_interface(RBS::TypeName.parse("::SchemaOrg::_Child"))
  end

  private

  def generate_signature
    root = Pathname.new(Dir.mktmpdir("schema-org-signature"))
    parser = SchemaOrg::Codegen::Parser.new(schema_file: fixture("diamond"))
    vocabulary = SchemaOrg::Codegen::Vocabulary.new(parser:)
    writer = SchemaOrg::Codegen::Writer.new
    manifest = SchemaOrg::Codegen::Manifest.new(
      writer:,
      manifest_root: root.join("codegen"),
      runtime_root: root.join("lib/schema_org"),
      signature_root: root.join("sig")
    )
    generator = SchemaOrg::Codegen::Generator.new(
      manifest:,
      template_engine: SchemaOrg::Codegen::TemplateEngine.new(templates_root: Pathname.new(__dir__).parent.join("codegen/templates")),
      writer:,
      lib_root: root.join("lib/schema_org"),
      signature_root: root.join("sig")
    )
    orchestrator = SchemaOrg::Codegen::Orchestrator.new(
      generator:,
      manifest:,
      vocabulary:,
      schema_version: SchemaOrg::Codegen::Models::SchemaVersion.new(schema_version: "fixture")
    )
    Dir.chdir(root) { orchestrator.orchestrate }
    root.join("sig/schema_org.rbs")
  end
end
