# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module Airport
      include CivicStructure

      def self.schema_property_definitions
        {
          iata_code: {
            schema_name: "iataCode",
            schema_url: "https://schema.org/iataCode",
            comment_lines: ["IATA identifier for an airline or airport."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          icao_code: {
            schema_name: "icaoCode",
            schema_url: "https://schema.org/icaoCode",
            comment_lines: ["ICAO identifier for an airport."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # IATA identifier for an airline or airport.
      def iata_code
        read_property(:iata_code)
      end

      # IATA identifier for an airline or airport.
      def iata_code=(value)
        write_property(:iata_code, value)
      end

      # ICAO identifier for an airport.
      def icao_code
        read_property(:icao_code)
      end

      # ICAO identifier for an airport.
      def icao_code=(value)
        write_property(:icao_code, value)
      end
    end
  end
end
