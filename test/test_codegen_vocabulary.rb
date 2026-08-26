# frozen_string_literal: true

require "tempfile"
require_relative "codegen_test_helper"

class TestCodegenVocabulary < Minitest::Test
  SubjectDouble = Struct.new(:url, :type, :parents, :used_on, :range_types, keyword_init: true) do
    def type?(marker)
      type.include?(marker)
    end
  end
  ParserDouble = Struct.new(:subjects)

  def test_ancestry_is_breadth_first_nearest_first_with_sorted_siblings
    vocabulary = vocabulary_for("diamond")
    child = vocabulary.classes.find { |subject| vocabulary.term_name(subject.url) == "Child" }

    assert_equal %w[A B Thing], vocabulary.ancestry(child)
  end

  def test_direct_multi_domain_properties_and_external_metadata
    vocabulary = vocabulary_for("diamond")
    assert_equal ["sharedProperty"], vocabulary.direct_properties("A").map { |property| vocabulary.term_name(property.url) }.grep(/shared/)
    assert_equal ["sharedProperty"], vocabulary.direct_properties("B").map { |property| vocabulary.term_name(property.url) }.grep(/shared/)

    external = vocabulary_for("external")
    property = external.properties.first
    assert_equal ["ExternalChild"], external.property_domains(property)
    assert_equal ["https://example.test/ExternalDomain"], external.property_external_domains(property)
    assert_equal ["https://example.test/ExternalRange"], external.property_external_ranges(property)
    assert_equal ["https://example.test/ExternalParent"], external.external_parents(external.classes.find { |subject| subject.url.end_with?("ExternalChild") })
  end

  def test_transitive_datatype_and_enumeration_classification
    vocabulary = vocabulary_for("diamond")
    assert vocabulary.data_type?("DateTime")
    assert vocabulary.enumeration?("SubItemAvailability")
    assert_includes vocabulary.ancestry("SubItemAvailability"), "Enumeration"
    assert_equal %w[IN_STOCK ONLINE], vocabulary.enumeration_members.map { |member| vocabulary.term_name(member.url) }
  end

  def test_naming_maps_three_d_model
    naming = SchemaOrg::Codegen::Naming.new
    assert_equal "ThreeDModel", naming.constant_name("3DModel")
    assert_equal :three_d_model, naming.method_name("3DModel")
    assert_equal :three_d_model, naming.enumeration_constant_name("3DModel").downcase.to_sym
    assert_equal "ThreeDModel", vocabulary_for("three_d_model").classes.first.then { |subject| naming.constant_name(vocabulary_for("three_d_model").term_name(subject.url)) }
  end

  def test_unknown_schema_references_are_rejected
    subjects = [
      class_subject("Child", parents: [:MissingParent]),
      class_subject("Thing"),
      property_subject("p", domains: [:Thing], ranges: [:MissingRange])
    ]

    error = assert_raises(SchemaOrg::Codegen::ValidationError) { SchemaOrg::Codegen::Vocabulary.new(parser: ParserDouble.new(subjects)) }
    assert_includes error.message, "MissingParent"
    assert_includes error.message, "MissingRange"
  end

  def test_duplicate_exact_uri_is_rejected
    first = class_subject("Thing")
    second = class_subject("Thing")
    parser = ParserDouble.new([first, second])
    error = assert_raises(SchemaOrg::Codegen::ValidationError) { SchemaOrg::Codegen::Vocabulary.new(parser:) }
    assert_includes error.message, "https://schema.org/Thing"
  end

  def test_inheritance_cycle_is_rejected
    subjects = [class_subject("A", parents: [:B]), class_subject("B", parents: [:A])]
    error = assert_raises(SchemaOrg::Codegen::ValidationError) { SchemaOrg::Codegen::Vocabulary.new(parser: ParserDouble.new(subjects)) }
    assert_includes error.message, "A"
    assert_includes error.message, "B"
  end

  def test_reserved_and_illegal_names_are_rejected
    reserved = class_subject("Base")
    error = assert_raises(SchemaOrg::Codegen::ValidationError) { SchemaOrg::Codegen::Vocabulary.new(parser: ParserDouble.new([reserved])) }
    assert_includes error.message, "Base"

    member = SubjectDouble.new(url: "https://schema.org/___", type: [:Thing], parents: [], used_on: [], range_types: [])
    enum = class_subject("Thing", parents: [:Enumeration])
    enumeration = class_subject("Enumeration")
    error = assert_raises(SchemaOrg::Codegen::ValidationError) do
      SchemaOrg::Codegen::Vocabulary.new(parser: ParserDouble.new([enum, enumeration, member]))
    end
    assert_includes error.message, "___"
  end

  def test_naming_collisions_report_all_terms
    subjects = [class_subject("Foo"), class_subject("Bar")]
    naming = Class.new do
      def constant_name(name)
        (name == "Foo" || name == "Bar") ? "Same" : name
      end

      def file_name(name)
        name.downcase
      end

      def method_name(name)
        name.downcase.to_sym
      end

      def enumeration_constant_name(name)
        name.upcase
      end
    end.new
    error = assert_raises(SchemaOrg::Codegen::ValidationError) do
      SchemaOrg::Codegen::Vocabulary.new(parser: ParserDouble.new(subjects), naming:)
    end
    assert_includes error.message, "Foo"
    assert_includes error.message, "Bar"
  end

  private

  def class_subject(name, parents: [])
    SubjectDouble.new(url: "https://schema.org/#{name}", type: [:Class], parents:, used_on: [], range_types: [])
  end

  def property_subject(name, domains:, ranges:)
    SubjectDouble.new(url: "https://schema.org/#{name}", type: [:Property], parents: [], used_on: domains, range_types: ranges)
  end
end
