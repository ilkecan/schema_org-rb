# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module EducationEvent
      include Event

      def self.schema_property_definitions
        {
          assesses: {
            schema_name: "assesses",
            schema_url: "https://schema.org/assesses",
            comment_lines: ["The item being described is intended to assess the competency or learning outcome defined by the referenced term."].freeze,
            ranges: ["DefinedTerm", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          educational_level: {
            schema_name: "educationalLevel",
            schema_url: "https://schema.org/educationalLevel",
            comment_lines: ["The level in terms of progression through an educational or training context. Examples of educational levels include 'beginner', 'intermediate' or 'advanced', and formal sets of level indicators."].freeze,
            ranges: ["DefinedTerm", "Text", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          teaches: {
            schema_name: "teaches",
            schema_url: "https://schema.org/teaches",
            comment_lines: ["The item being described is intended to help a person learn the competency or learning outcome defined by the referenced term."].freeze,
            ranges: ["DefinedTerm", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The item being described is intended to assess the competency or learning outcome defined by the referenced term.
      def assesses
        read_property(:assesses)
      end

      # The item being described is intended to assess the competency or learning outcome defined by the referenced term.
      def assesses=(value)
        write_property(:assesses, value)
      end

      # The level in terms of progression through an educational or training context. Examples of educational levels include 'beginner', 'intermediate' or 'advanced', and formal sets of level indicators.
      def educational_level
        read_property(:educational_level)
      end

      # The level in terms of progression through an educational or training context. Examples of educational levels include 'beginner', 'intermediate' or 'advanced', and formal sets of level indicators.
      def educational_level=(value)
        write_property(:educational_level, value)
      end

      # The item being described is intended to help a person learn the competency or learning outcome defined by the referenced term.
      def teaches
        read_property(:teaches)
      end

      # The item being described is intended to help a person learn the competency or learning outcome defined by the referenced term.
      def teaches=(value)
        write_property(:teaches, value)
      end
    end
  end
end
