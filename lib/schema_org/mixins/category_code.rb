# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module CategoryCode
      include DefinedTerm

      def self.schema_property_definitions
        {
          code_value: {
            schema_name: "codeValue",
            schema_url: "https://schema.org/codeValue",
            comment_lines: ["A short textual code that uniquely identifies the value."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          in_code_set: {
            schema_name: "inCodeSet",
            schema_url: "https://schema.org/inCodeSet",
            comment_lines: ["A [[CategoryCodeSet]] that contains this category code."].freeze,
            ranges: ["CategoryCodeSet", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # A short textual code that uniquely identifies the value.
      def code_value
        read_property(:code_value)
      end

      # A short textual code that uniquely identifies the value.
      def code_value=(value)
        write_property(:code_value, value)
      end

      # A [[CategoryCodeSet]] that contains this category code.
      def in_code_set
        read_property(:in_code_set)
      end

      # A [[CategoryCodeSet]] that contains this category code.
      def in_code_set=(value)
        write_property(:in_code_set, value)
      end
    end
  end
end
