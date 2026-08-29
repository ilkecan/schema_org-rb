# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module ChooseAction
      include AssessAction

      def self.schema_property_definitions
        {
          action_option: {
            schema_name: "actionOption",
            schema_url: "https://schema.org/actionOption",
            comment_lines: ["A sub property of object. The options subject to this action."].freeze,
            ranges: ["Text", "Thing"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: ["option"].freeze
          }.freeze,
          option: {
            schema_name: "option",
            schema_url: "https://schema.org/option",
            comment_lines: ["A sub property of object. The options subject to this action."].freeze,
            ranges: ["Text", "Thing"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: "actionOption",
            supersedes: nil
          }.freeze
        }.freeze
      end

      # A sub property of object. The options subject to this action.
      # Supersedes `option`.
      def action_option
        read_property(:action_option)
      end

      # A sub property of object. The options subject to this action.
      # Supersedes `option`.
      def action_option=(value)
        write_property(:action_option, value)
      end

      # A sub property of object. The options subject to this action.
      # Superseded by `actionOption`.
      def option
        read_property(:option)
      end

      # A sub property of object. The options subject to this action.
      # Superseded by `actionOption`.
      def option=(value)
        write_property(:option, value)
      end
    end
  end
end
