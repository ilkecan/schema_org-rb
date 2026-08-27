# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module Airline
      include Organization

      def self.schema_property_definitions
        {
          boarding_policy: {
            schema_name: "boardingPolicy",
            schema_url: "https://schema.org/boardingPolicy",
            comment_lines: ["The type of boarding policy used by the airline (e.g. zone-based or group-based)."].freeze,
            ranges: ["BoardingPolicyType"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          iata_code: {
            schema_name: "iataCode",
            schema_url: "https://schema.org/iataCode",
            comment_lines: ["IATA identifier for an airline or airport."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The type of boarding policy used by the airline (e.g. zone-based or group-based).
      def boarding_policy
        read_property(:boarding_policy)
      end

      # The type of boarding policy used by the airline (e.g. zone-based or group-based).
      def boarding_policy=(value)
        write_property(:boarding_policy, value)
      end

      # IATA identifier for an airline or airport.
      def iata_code
        read_property(:iata_code)
      end

      # IATA identifier for an airline or airport.
      def iata_code=(value)
        write_property(:iata_code, value)
      end
    end
  end
end
