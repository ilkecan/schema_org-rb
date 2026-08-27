# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module BoatTrip
      include Trip

      def self.schema_property_definitions
        {
          arrival_boat_terminal: {
            schema_name: "arrivalBoatTerminal",
            schema_url: "https://schema.org/arrivalBoatTerminal",
            comment_lines: ["The terminal or port from which the boat arrives."].freeze,
            ranges: ["BoatTerminal"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          departure_boat_terminal: {
            schema_name: "departureBoatTerminal",
            schema_url: "https://schema.org/departureBoatTerminal",
            comment_lines: ["The terminal or port from which the boat departs."].freeze,
            ranges: ["BoatTerminal"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The terminal or port from which the boat arrives.
      def arrival_boat_terminal
        read_property(:arrival_boat_terminal)
      end

      # The terminal or port from which the boat arrives.
      def arrival_boat_terminal=(value)
        write_property(:arrival_boat_terminal, value)
      end

      # The terminal or port from which the boat departs.
      def departure_boat_terminal
        read_property(:departure_boat_terminal)
      end

      # The terminal or port from which the boat departs.
      def departure_boat_terminal=(value)
        write_property(:departure_boat_terminal, value)
      end
    end
  end
end
