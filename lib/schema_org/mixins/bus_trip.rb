module SchemaOrg
  module Mixins
    module BusTrip
      include Trip

      def self.schema_property_definitions
        {
          :arrival_bus_stop => {
            schema_name: "arrivalBusStop",
            ranges: ["BusStation", "BusStop"],
          }.freeze,
          :bus_name => {
            schema_name: "busName",
            ranges: ["Text"],
          }.freeze,
          :bus_number => {
            schema_name: "busNumber",
            ranges: ["Text"],
          }.freeze,
          :departure_bus_stop => {
            schema_name: "departureBusStop",
            ranges: ["BusStation", "BusStop"],
          }.freeze,
        }.freeze
      end

      def arrival_bus_stop
        read_property(:arrival_bus_stop)
      end

      def arrival_bus_stop=(value)
        write_property(:arrival_bus_stop, value)
      end

      def bus_name
        read_property(:bus_name)
      end

      def bus_name=(value)
        write_property(:bus_name, value)
      end

      def bus_number
        read_property(:bus_number)
      end

      def bus_number=(value)
        write_property(:bus_number, value)
      end

      def departure_bus_stop
        read_property(:departure_bus_stop)
      end

      def departure_bus_stop=(value)
        write_property(:departure_bus_stop, value)
      end

    end
  end
end
