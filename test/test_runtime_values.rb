# frozen_string_literal: true

require "date"
require_relative "test_helper"

class TestRuntimeValues < Minitest::Test
  def test_native_dates_and_times_follow_declared_ranges
    event = SchemaOrg::Event.new(
      start_date: Date.new(2024, 1, 2),
      end_date: DateTime.new(2024, 1, 3, 4, 5, 6)
    )

    assert_equal "2024-01-02", event.as_jsonld["startDate"]
    assert_match(/2024-01-03T04:05:06/, event.as_jsonld["endDate"])
    assert_raises(SchemaOrg::InvalidPropertyValueError) { SchemaOrg::Person.new(birth_date: DateTime.now) }
  end

  def test_enumerations_are_immutable_and_schema_typed
    value = SchemaOrg::ItemAvailability::IN_STOCK

    assert_predicate value, :frozen?
    assert value.schema_type?(SchemaOrg::ItemAvailability)
    assert_equal "https://schema.org/InStock", value.as_jsonld
    assert_equal value, SchemaOrg::ItemAvailability::IN_STOCK
  end

  def test_object_cycles_are_rejected_during_serialization
    person = SchemaOrg::Person.new(name: "Jane")
    person.colleague = [person]

    assert_raises(SchemaOrg::CircularReferenceError) { person.as_jsonld }
  end

  def test_unknown_properties_are_rejected
    assert_raises(SchemaOrg::UnknownPropertyError) { SchemaOrg::Person.new(no_such_property: true) }
  end
end
