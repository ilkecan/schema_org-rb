# frozen_string_literal: true

require_relative "codegen_test_helper"

class TestCodegenParser < Minitest::Test
  FIXTURE = File.expand_path("fixtures/schema.ttl", __dir__)

  def setup
    @parser = SchemaOrg::Codegen::Parser.new(schema_file: FIXTURE)
  end

  def test_groups_exact_schema_subjects_and_preserves_external_objects
    child = @parser.subjects.find { |subject| subject.url.end_with?("/Child") }

    refute_nil child
    assert_equal "https://schema.org/Child", child.url
    assert_equal ["https://example.test/ExternalParent"], child.parents.grep(String)
    assert_equal [:Parent], child.parents.grep(Symbol)
    assert_empty @parser.subjects.select { |subject| subject.url.include?("example.test") }
  end

  def test_vocabulary_orders_graph_and_references
    vocabulary = SchemaOrg::Codegen::Vocabulary.new(parser: @parser)
    child = vocabulary.classes.find { |subject| vocabulary.term_name(subject.url) == "Child" }

    assert_equal ["Parent"], vocabulary.direct_parents(child)
    assert_equal ["Parent", "Thing"], vocabulary.ancestry(child)
    assert_equal ["https://example.test/ExternalParent"], vocabulary.external_parents(child)
    assert_equal ["title"], vocabulary.direct_properties("Child").map { |property| vocabulary.term_name(property.url) }
  end
end
