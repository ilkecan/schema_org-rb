# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module ReplaceAction
      include UpdateAction

      def self.schema_property_definitions
        {
          replacee: {
            schema_name: "replacee",
            schema_url: "https://schema.org/replacee",
            comment_lines: ["A sub property of object. The object that is being replaced."].freeze,
            ranges: ["Thing"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          replacer: {
            schema_name: "replacer",
            schema_url: "https://schema.org/replacer",
            comment_lines: ["A sub property of object. The object that replaces."].freeze,
            ranges: ["Thing"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # A sub property of object. The object that is being replaced.
      def replacee
        read_property(:replacee)
      end

      # A sub property of object. The object that is being replaced.
      def replacee=(value)
        write_property(:replacee, value)
      end

      # A sub property of object. The object that replaces.
      def replacer
        read_property(:replacer)
      end

      # A sub property of object. The object that replaces.
      def replacer=(value)
        write_property(:replacer, value)
      end
    end
  end
end
