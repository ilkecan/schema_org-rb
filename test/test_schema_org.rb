# frozen_string_literal: true

require "test_helper"
require "date"
require "json"

class TestSchemaOrg < Minitest::Test
  def test_version_and_json_ld
    assert_equal "0.1.0", SchemaOrg::VERSION
    assert_equal "v30.0", SchemaOrg::SCHEMA_VERSION

    person = SchemaOrg::Person.new(
      address: SchemaOrg::PostalAddress.new(address_locality: "Seattle"),
      birth_date: Date.new(1980, 1, 2),
      colleague: ["https://example.test/alice"],
      job_title: "Professor",
      name: "Jane Doe"
    )
    assert_equal "2020-01-02", Date.new(2020, 1, 2).iso8601
    assert_equal "1980-01-02", person.as_jsonld["birthDate"]
    assert_equal "Seattle", person.as_jsonld["address"]["addressLocality"]
    refute_includes person.as_jsonld["address"], "@context"
    assert_equal person.as_jsonld, JSON.parse(person.to_json)
    refute_equal person.to_json, person.to_s
  end

  def test_checked_mutation_and_arrays
    person = SchemaOrg::Person.new(name: "Jane")
    assert_raises(SchemaOrg::UnknownPropertyError) { SchemaOrg::Person.new(nmae: "Jane") }
    assert_raises(SchemaOrg::InvalidPropertyValueError) { person.birth_date = "1980-01-01" }
    person.job_title = "Professor"
    assert_raises(SchemaOrg::InvalidPropertyValueError) { person.job_title = 42 }
    assert_equal "Professor", person.job_title
    error = assert_raises(SchemaOrg::InvalidPropertyValueError) { person.colleague = ["ok", 42] }
    assert_includes error.message, "colleague[1]"
    person.job_title = nil
    assert_nil person.job_title
    assert_raises(FrozenError) { person.freeze.job_title = "Other" }
  end

  def test_multiple_inheritance_and_enumerations
    business = SchemaOrg::LocalBusiness.new(
      address: SchemaOrg::PostalAddress.new(address_locality: "Seattle"),
      latitude: 47.6,
      legal_name: "Example"
    )
    assert business.schema_type?(SchemaOrg::Organization)
    assert business.schema_type?(SchemaOrg::Place)
    refute business.is_a?(SchemaOrg::Place)
    assert_equal 1, business.class.property_definitions.keys.count { |name| name == :address }

    availability = SchemaOrg::ItemAvailability::IN_STOCK
    assert availability.frozen?
    assert_equal availability, SchemaOrg::ItemAvailability.values.find { |value| value.term == "InStock" }
    offer = SchemaOrg::Offer.new(availability:)
    assert_equal "https://schema.org/InStock", offer.as_jsonld["availability"]
    assert_raises(SchemaOrg::InvalidPropertyValueError) do
      SchemaOrg::Offer.new(availability: SchemaOrg::OfferItemCondition::NEW_CONDITION)
    end
  end

  def test_schema_type_queries_and_abstract_data_types
    assert_equal [SchemaOrg::Person, SchemaOrg::Thing], SchemaOrg::Person.schema_types
    assert SchemaOrg::Person.new.schema_type?(SchemaOrg::Thing)
    assert_raises(TypeError) { SchemaOrg::Person.schema_type?(:Thing) }
    assert_raises(SchemaOrg::AbstractTypeError) { SchemaOrg::Integer.new }
  end
end
