# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module WinAction
      include AchieveAction

      def self.schema_property_definitions
        {
          loser: {
            schema_name: "loser",
            schema_url: "https://schema.org/loser",
            comment_lines: ["A sub property of participant. The loser of the action."].freeze,
            ranges: ["Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # A sub property of participant. The loser of the action.
      def loser
        read_property(:loser)
      end

      # A sub property of participant. The loser of the action.
      def loser=(value)
        write_property(:loser, value)
      end
    end
  end
end
