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

  def test_range_less_values_are_strict_structural_values
    values = ["text", 1, 1.5, true, false, SchemaOrg::ItemAvailability::IN_STOCK, SchemaOrg::Person.new(name: "Jane"), {"nested" => 1}]
    values.each { |value| assert_equal value, SchemaOrg::Observation.new(measured_property: value).measured_property }
  end

  def test_range_less_values_reject_unsupported_and_nested_arrays
    [Object.new, Date.today, DateTime.now, Time.now, [1, [2]], {1 => "bad"}].each do |value|
      assert_raises(SchemaOrg::InvalidPropertyValueError) do
        SchemaOrg::Observation.new(measured_property: value)
      end
    end
  end

  def test_range_less_cycles_report_paths_and_shared_branches_are_allowed
    hash = {}
    hash["self"] = hash
    error = assert_raises(SchemaOrg::CircularReferenceError) do
      SchemaOrg::Observation.new(measured_property: hash)
    end
    assert_includes error.message, "measured_property[\"self\"]"

    array = []
    array << array
    error = assert_raises(SchemaOrg::CircularReferenceError) do
      SchemaOrg::Observation.new(measured_property: array)
    end
    assert_includes error.message, "measured_property[0]"

    shared = {"value" => 1}
    observation = SchemaOrg::Observation.new(measured_property: [shared, shared])
    assert_equal [{"value" => 1}, {"value" => 1}], observation.measured_property
  end

  def test_exact_date_and_generated_class_requirements
    date_subclass = Class.new(Date)
    assert_raises(SchemaOrg::InvalidPropertyValueError) do
      SchemaOrg::Person.new(birth_date: date_subclass.jd(2_460_000))
    end

    consumer_subclass = Class.new(SchemaOrg::Person)
    assert_raises(SchemaOrg::InvalidPropertyValueError) do
      SchemaOrg::Observation.new(measured_property: consumer_subclass.new(name: "Jane"))
    end
  end
end
