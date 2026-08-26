# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module PlayGameAction
      include ConsumeAction

      def self.schema_property_definitions
        {
          game_availability_type: {
            schema_name: "gameAvailabilityType",
            schema_url: "https://schema.org/gameAvailabilityType",
            comment_lines: ["Indicates the availability type of the game content associated with this action, such as whether it is a full version or a demo."].freeze,
            ranges: ["GameAvailabilityEnumeration", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # Indicates the availability type of the game content associated with this action, such as whether it is a full version or a demo.
      def game_availability_type
        read_property(:game_availability_type)
      end

      # Indicates the availability type of the game content associated with this action, such as whether it is a full version or a demo.
      def game_availability_type=(value)
        write_property(:game_availability_type, value)
      end
    end
  end
end
