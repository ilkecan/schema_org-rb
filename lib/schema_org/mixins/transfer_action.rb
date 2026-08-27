# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module TransferAction
      include Action

      def self.schema_property_definitions
        {
          from_location: {
            schema_name: "fromLocation",
            schema_url: "https://schema.org/fromLocation",
            comment_lines: ["A sub property of location. The original location of the object or the agent before the action."].freeze,
            ranges: ["Place"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          to_location: {
            schema_name: "toLocation",
            schema_url: "https://schema.org/toLocation",
            comment_lines: ["A sub property of location. The final location of the object or the agent after the action."].freeze,
            ranges: ["Place"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # A sub property of location. The original location of the object or the agent before the action.
      def from_location
        read_property(:from_location)
      end

      # A sub property of location. The original location of the object or the agent before the action.
      def from_location=(value)
        write_property(:from_location, value)
      end

      # A sub property of location. The final location of the object or the agent after the action.
      def to_location
        read_property(:to_location)
      end

      # A sub property of location. The final location of the object or the agent after the action.
      def to_location=(value)
        write_property(:to_location, value)
      end
    end
  end
end
