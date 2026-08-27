# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module BusTrip
      include Trip

      def self.schema_property_definitions
        {
          arrival_bus_stop: {
            schema_name: "arrivalBusStop",
            schema_url: "https://schema.org/arrivalBusStop",
            comment_lines: ["The stop or station from which the bus arrives."].freeze,
            ranges: ["BusStation", "BusStop"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          bus_name: {
            schema_name: "busName",
            schema_url: "https://schema.org/busName",
            comment_lines: ["The name of the bus (e.g. Bolt Express)."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          bus_number: {
            schema_name: "busNumber",
            schema_url: "https://schema.org/busNumber",
            comment_lines: ["The unique identifier for the bus."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          departure_bus_stop: {
            schema_name: "departureBusStop",
            schema_url: "https://schema.org/departureBusStop",
            comment_lines: ["The stop or station from which the bus departs."].freeze,
            ranges: ["BusStation", "BusStop"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The stop or station from which the bus arrives.
      def arrival_bus_stop
        read_property(:arrival_bus_stop)
      end

      # The stop or station from which the bus arrives.
      def arrival_bus_stop=(value)
        write_property(:arrival_bus_stop, value)
      end

      # The name of the bus (e.g. Bolt Express).
      def bus_name
        read_property(:bus_name)
      end

      # The name of the bus (e.g. Bolt Express).
      def bus_name=(value)
        write_property(:bus_name, value)
      end

      # The unique identifier for the bus.
      def bus_number
        read_property(:bus_number)
      end

      # The unique identifier for the bus.
      def bus_number=(value)
        write_property(:bus_number, value)
      end

      # The stop or station from which the bus departs.
      def departure_bus_stop
        read_property(:departure_bus_stop)
      end

      # The stop or station from which the bus departs.
      def departure_bus_stop=(value)
        write_property(:departure_bus_stop, value)
      end
    end
  end
end
