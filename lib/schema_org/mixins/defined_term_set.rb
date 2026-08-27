# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module DefinedTermSet
      include CreativeWork

      def self.schema_property_definitions
        {
          about: {
            schema_name: "about",
            schema_url: "https://schema.org/about",
            comment_lines: ["The subject matter of an object."].freeze,
            ranges: ["Thing"].freeze,
            external_ranges: [].freeze,
            inverse_of: "subjectOf",
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          has_defined_term: {
            schema_name: "hasDefinedTerm",
            schema_url: "https://schema.org/hasDefinedTerm",
            comment_lines: ["A Defined Term contained in this term set."].freeze,
            ranges: ["DefinedTerm"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The subject matter of an object.
      # Inverse-property: `subjectOf`.
      def about
        read_property(:about)
      end

      # The subject matter of an object.
      # Inverse-property: `subjectOf`.
      def about=(value)
        write_property(:about, value)
      end

      # A Defined Term contained in this term set.
      def has_defined_term
        read_property(:has_defined_term)
      end

      # A Defined Term contained in this term set.
      def has_defined_term=(value)
        write_property(:has_defined_term, value)
      end
    end
  end
end
