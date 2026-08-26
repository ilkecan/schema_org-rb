# frozen_string_literal: true

require_relative "codegen_test_helper"

class TestCodegenParser < Minitest::Test
  def test_groups_exact_schema_subjects_and_preserves_external_objects
    parser = parser_for("schema_prefix")
    child = parser.subjects.find { |subject| subject.url.end_with?("/Child") }

    refute_nil child
    assert_equal "https://schema.org/Child", child.url
    assert_equal ["https://example.test/ExternalParent"], child.parents.grep(String)
    assert_equal [:Parent], child.parents.grep(Symbol)
    assert_empty parser.subjects.select { |subject| subject.url.include?("example.test") }
  end

  def test_http_and_https_subjects_are_distinct
    Tempfile.create(["http-https", ".ttl"]) do |file|
      file.write("@prefix schema: <https://schema.org/> .\n")
      file.write("@prefix old: <http://schema.org/> .\n")
      file.write("schema:Thing a schema:Class .\nold:Thing a schema:Class .\n")
      file.flush

      parser = SchemaOrg::Codegen::Parser.new(schema_file: file.path)
      assert_equal ["http://schema.org/Thing", "https://schema.org/Thing"], parser.subjects.map(&:url).sort
    end
  end

  def test_default_and_schema_prefixes_have_equal_subjects
    default = parser_for("equivalent_default").subjects.map { |subject| [subject.url, subject.type, subject.parents, subject.used_on, subject.range_types] }
    schema = parser_for("equivalent_schema_reordered").subjects.map { |subject| [subject.url, subject.type, subject.parents, subject.used_on, subject.range_types] }

    assert_equal default.sort_by(&:first), schema.sort_by(&:first)
  end

  def test_reordered_triples_have_equal_subjects
    left = vocabulary_for("equivalent_default")
    right = vocabulary_for("equivalent_schema_reordered")

    assert_equal left.classes.map { |subject| left.term_name(subject.url) }, right.classes.map { |subject| right.term_name(subject.url) }
    assert_equal left.properties.map { |subject| left.term_name(subject.url) }, right.properties.map { |subject| right.term_name(subject.url) }
  end
end
