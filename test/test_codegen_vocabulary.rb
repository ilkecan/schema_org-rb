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
    child = external.classes.find { |subject| subject.url.end_with?("ExternalChild") }
    property = external.properties.first
    assert_equal ["Thing"], external.direct_parents(child)
    assert_equal ["ExternalChild"], external.property_domains(property)
    assert_equal ["https://example.test/ExternalDomain"], external.property_external_domains(property)
    assert_equal ["https://example.test/ExternalRange"], external.property_external_ranges(property)
    assert_equal ["https://example.test/ExternalParent"], external.external_parents(child)
  end

  def test_transitive_datatype_enumeration_and_multi_declared_members
    vocabulary = vocabulary_for("diamond")
    in_stock = vocabulary.enumeration_members.find { |member| vocabulary.term_name(member.url) == "IN_STOCK" }

    assert vocabulary.data_type?("DateTime")
    assert vocabulary.enumeration?("SubItemAvailability")
    assert_includes vocabulary.ancestry("SubItemAvailability"), "Enumeration"
    assert_equal %w[IN_STOCK ONLINE], vocabulary.enumeration_members.map { |member| vocabulary.term_name(member.url) }
    assert_equal %i[ItemAvailability SubItemAvailability], in_stock.type
  end

  def test_naming_maps_three_d_model
    naming = SchemaOrg::Codegen::Naming.new
    assert_equal "ThreeDModel", naming.constant_name("3DModel")
    assert_equal "three_d_model", naming.file_name("3DModel")
    assert_equal :three_d_model, naming.method_name("3DModel")
    assert_equal "ThreeDModel", vocabulary_for("three_d_model").classes.first.then { |subject| naming.constant_name(vocabulary_for("three_d_model").term_name(subject.url)) }
  end

  def test_unknown_schema_references_report_parent_domain_and_range
    subjects = [
      class_subject("Child", parents: [:MissingParent]),
      class_subject("Thing"),
      property_subject("p", domains: [:MissingDomain], ranges: [:MissingRange])
    ]

    error = assert_raises(SchemaOrg::Codegen::ValidationError) { SchemaOrg::Codegen::Vocabulary.new(parser: ParserDouble.new(subjects)) }
    %w[MissingParent MissingDomain MissingRange].each { |term| assert_includes error.message, term }
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

  def test_top_level_reserved_names_are_rejected
    SchemaOrg::Codegen::Vocabulary::TOP_LEVEL_RESERVED_CONSTANTS.each do |name|
      error = assert_raises(SchemaOrg::Codegen::ValidationError) do
        SchemaOrg::Codegen::Vocabulary.new(parser: ParserDouble.new([class_subject(name)]))
      end
      assert_includes error.message, name
    end
  end

  def test_nested_reserved_and_illegal_enumeration_constants_are_rejected
    subjects = [
      class_subject("Enumeration"),
      class_subject("Availability", parents: [:Enumeration]),
      member_subject("VALUES", :Availability),
      member_subject("SCHEMA_NAME", :Availability)
    ]
    error = assert_raises(SchemaOrg::Codegen::ValidationError) do
      SchemaOrg::Codegen::Vocabulary.new(parser: ParserDouble.new(subjects))
    end
    %w[VALUES SCHEMA_NAME].each { |term| assert_includes error.message, term }

    illegal = subjects.first(2) + [member_subject("___", :Availability)]
    error = assert_raises(SchemaOrg::Codegen::ValidationError) do
      SchemaOrg::Codegen::Vocabulary.new(parser: ParserDouble.new(illegal))
    end
    assert_includes error.message, "___"
  end

  def test_each_generated_ruby_scope_reports_all_colliding_terms
    cases = {
      constant: [[class_subject("Foo"), class_subject("Bar")], %w[Foo Bar]],
      file: [[class_subject("Foo"), class_subject("Bar")], %w[Foo Bar]],
      method: [[class_subject("Thing"), property_subject("foo", domains: [:Thing], ranges: [:Thing]), property_subject("bar", domains: [:Thing], ranges: [:Thing])], %w[foo bar]],
      enumeration_constant: [
        [class_subject("Enumeration"), class_subject("Availability", parents: [:Enumeration]), member_subject("Foo", :Availability), member_subject("Bar", :Availability)],
        %w[Foo Bar]
      ]
    }

    cases.each do |kind, (subjects, expected_terms)|
      error = assert_raises(SchemaOrg::Codegen::ValidationError) do
        SchemaOrg::Codegen::Vocabulary.new(parser: ParserDouble.new(subjects), naming: colliding_naming(kind))
      end
      expected_terms.each { |term| assert_includes error.message, term }
    end
  end

  private

  def class_subject(name, parents: [])
    SubjectDouble.new(url: "https://schema.org/#{name}", type: [:Class], parents:, used_on: [], range_types: [])
  end

  def property_subject(name, domains:, ranges:)
    SubjectDouble.new(url: "https://schema.org/#{name}", type: [:Property], parents: [], used_on: domains, range_types: ranges)
  end

  def member_subject(name, type)
    SubjectDouble.new(url: "https://schema.org/#{name}", type: [type], parents: [], used_on: [], range_types: [])
  end

  def colliding_naming(kind)
    Class.new do
      define_method(:constant_name) do |name|
        (kind == :constant && %w[Foo Bar].include?(name)) ? "Same" : name
      end

      define_method(:file_name) do |name|
        (kind == :file && %w[Foo Bar].include?(name)) ? "same" : name.downcase
      end

      define_method(:method_name) do |name|
        (kind == :method && %w[foo bar].include?(name)) ? :same : name.downcase.to_sym
      end

      define_method(:enumeration_constant_name) do |name|
        (kind == :enumeration_constant && %w[Foo Bar].include?(name)) ? "SAME" : name.upcase
      end
    end.new
  end
end
