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
end
