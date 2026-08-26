# frozen_string_literal: true

require_relative "test_helper"

class TestCodegenGeneration < Minitest::Test
  def test_all_layer_registry_and_metadata_are_complete
    assert_equal "v30.0", SchemaOrg::SCHEMA_VERSION
    assert_equal "FAQPage", SchemaOrg::GeneratedVocabulary.ruby_name("FAQPage")
    assert_equal "FAQPage", SchemaOrg::GeneratedVocabulary.schema_name(SchemaOrg::FAQPage)
    assert_equal "FAQPage", SchemaOrg::GeneratedVocabulary.inflections.fetch("faq_page")
    assert SchemaOrg::GeneratedVocabulary.generated_class?(SchemaOrg::FAQPage)
    assert SchemaOrg::GeneratedVocabulary.enumeration?(SchemaOrg::ItemAvailability)
  end

  def test_metadata_is_immutable_and_uses_schema_names
    definition = SchemaOrg::Offer.property_definitions.fetch(:availability)

    assert_equal "availability", definition[:schema_name]
    assert_equal "https://schema.org/availability", definition[:schema_url]
    assert_predicate definition, :frozen?
    assert_predicate definition[:ranges], :frozen?
    assert_raises(FrozenError) { definition[:ranges] << "Thing" }
  end

  def test_representative_metadata_is_fully_frozen
    definitions = [
      SchemaOrg::ArchiveComponent.property_definitions.fetch(:holding_archive),
      SchemaOrg::APIReference.property_definitions.fetch(:assembly),
      SchemaOrg::APIReference.property_definitions.fetch(:executable_library_name),
      SchemaOrg::Observation.property_definitions.fetch(:measured_property)
    ]
    definitions.each do |definition|
      assert_predicate definition, :frozen?
      definition.each_value do |value|
        assert_predicate value, :frozen? if value.is_a?(Array) || value.is_a?(String)
      end
    end
    assert_equal "archiveHeld", definitions[0][:inverse_of]
    assert_equal "executableLibraryName", definitions[1][:superseded_by]
    assert_equal "assembly", definitions[2][:supersedes]
    assert_equal ["Property"], definitions[3][:external_ranges]
    assert_raises(FrozenError) { definitions[0][:schema_name].replace("changed") }
    assert_raises(FrozenError) { definitions[1][:comment_lines] << "changed" }
  end

  def test_generated_comments_include_metadata_and_frozen_headers
    holding = File.read("lib/schema_org/mixins/archive_component.rb")
    reference = File.read("lib/schema_org/mixins/api_reference.rb")

    assert_includes holding, "Inverse-property: `archiveHeld`."
    assert_includes reference, "Superseded by `executableLibraryName`."
    assert_includes reference, "Supersedes `assembly`."
    Dir["lib/schema_org/**/*.rb"].each { |file| assert_match(/\A# frozen_string_literal: true\n/, File.read(file)) }
  end
end
