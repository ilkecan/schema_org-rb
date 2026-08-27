# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module DefinedTerm
      include Intangible

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
          in_defined_term_set: {
            schema_name: "inDefinedTermSet",
            schema_url: "https://schema.org/inDefinedTermSet",
            comment_lines: ["A [[DefinedTermSet]] that contains this term."].freeze,
            ranges: ["DefinedTermSet", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          term_code: {
            schema_name: "termCode",
            schema_url: "https://schema.org/termCode",
            comment_lines: ["A code that identifies this [[DefinedTerm]] within a [[DefinedTermSet]]."].freeze,
            ranges: ["Text"].freeze,
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

      # A [[DefinedTermSet]] that contains this term.
      def in_defined_term_set
        read_property(:in_defined_term_set)
      end

      # A [[DefinedTermSet]] that contains this term.
      def in_defined_term_set=(value)
        write_property(:in_defined_term_set, value)
      end

      # A code that identifies this [[DefinedTerm]] within a [[DefinedTermSet]].
      def term_code
        read_property(:term_code)
      end

      # A code that identifies this [[DefinedTerm]] within a [[DefinedTermSet]].
      def term_code=(value)
        write_property(:term_code, value)
      end
    end
  end
end
