# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module LoseAction
      include AchieveAction

      def self.schema_property_definitions
        {
          winner: {
            schema_name: "winner",
            schema_url: "https://schema.org/winner",
            comment_lines: ["A sub property of participant. The winner of the action."].freeze,
            ranges: ["Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # A sub property of participant. The winner of the action.
      def winner
        read_property(:winner)
      end

      # A sub property of participant. The winner of the action.
      def winner=(value)
        write_property(:winner, value)
      end
    end
  end
end
