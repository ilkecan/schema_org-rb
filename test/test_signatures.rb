# frozen_string_literal: true

require "pathname"
require "rbs"
require "tmpdir"
require_relative "codegen_test_helper"

class TestSignatures < Minitest::Test
  def test_fixture_signature_is_complete_and_valid_rbs
    signature = generate_signature
    source = signature.read
    child = interface_source(source, "_Child")
    interface_a = interface_source(source, "_A")
    interface_b = interface_source(source, "_B")

    %w[ancestor_property shared_property child_property].each do |property|
      assert_includes child, "def #{property}:"
      assert_includes child, "def #{property}=:"
    end
    assert_includes interface_a, "def shared_property:"
    assert_includes interface_b, "def shared_property:"
    assert_includes source, "?ancestor_property:"
    assert_includes source, "?shared_property:"
    assert_includes child, "::Date | ::DateTime | ::Time"
    assert_equal 2, child.scan("def shared_property").length
    assert_includes child, "SchemaOrg::EnumerationValue[_ItemAvailability]"
    assert_includes child, "SchemaOrg::EnumerationValue[_SubItemAvailability]"
    assert_includes source, "IN_STOCK: SchemaOrg::EnumerationValue[SchemaOrg::_ItemAvailability & SchemaOrg::_SubItemAvailability]"
    assert_includes source, "def self.new: (**untyped) -> bot"
    assert_includes source, "VERSION: String"
    assert_includes source, "SCHEMA_VERSION: String"
    assert_includes source, "CONTEXT: String"
    assert_includes source, "type schema_property_definition = {"
    refute_includes source, "Mixins::"
    refute_includes source, "GeneratedVocabulary"

    loader = RBS::EnvironmentLoader.new
    loader.add(library: "date")
    loader.add(path: signature)
    environment = RBS::Environment.from_loader(loader).resolve_type_names
    builder = RBS::DefinitionBuilder.new(env: environment)
    assert_operator environment.interface_decls.length, :>, 0
    environment.interface_decls.each_key { |name| builder.build_interface(name) }
  end

  def test_reordered_fixture_produces_identical_rbs
    assert_equal generate_signature("equivalent_default").binread, generate_signature("equivalent_schema_reordered").binread
  end

  private

  def interface_source(source, name)
    source[/interface #{name}\n.*?(?=\n  (?:interface|class) )/m]
  end

  def generate_signature(name = "diamond")
    root = Pathname.new(Dir.mktmpdir("schema-org-signature"))
    parser = SchemaOrg::Codegen::Parser.new(schema_file: fixture(name))
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
