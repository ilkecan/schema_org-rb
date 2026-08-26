module SchemaOrg
  module Mixins
    module TrainTrip
      include Trip

      def self.schema_property_definitions
        {
          :arrival_platform => {
            schema_name: "arrivalPlatform",
            ranges: ["Text"],
          }.freeze,
          :arrival_station => {
            schema_name: "arrivalStation",
            ranges: ["TrainStation"],
          }.freeze,
          :departure_platform => {
            schema_name: "departurePlatform",
            ranges: ["Text"],
          }.freeze,
          :departure_station => {
            schema_name: "departureStation",
            ranges: ["TrainStation"],
          }.freeze,
          :train_name => {
            schema_name: "trainName",
            ranges: ["Text"],
          }.freeze,
          :train_number => {
            schema_name: "trainNumber",
            ranges: ["Text"],
          }.freeze,
        }.freeze
      end

      def arrival_platform
        read_property(:arrival_platform)
      end

      def arrival_platform=(value)
        write_property(:arrival_platform, value)
      end

      def arrival_station
        read_property(:arrival_station)
      end

      def arrival_station=(value)
        write_property(:arrival_station, value)
      end

      def departure_platform
        read_property(:departure_platform)
      end

      def departure_platform=(value)
        write_property(:departure_platform, value)
      end

      def departure_station
        read_property(:departure_station)
      end

      def departure_station=(value)
        write_property(:departure_station, value)
      end

      def train_name
        read_property(:train_name)
      end

      def train_name=(value)
        write_property(:train_name, value)
      end

      def train_number
        read_property(:train_number)
      end

      def train_number=(value)
        write_property(:train_number, value)
      end

    end
  end
end
