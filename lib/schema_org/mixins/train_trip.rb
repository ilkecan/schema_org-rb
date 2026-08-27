# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module TrainTrip
      include Trip

      def self.schema_property_definitions
        {
          arrival_platform: {
            schema_name: "arrivalPlatform",
            schema_url: "https://schema.org/arrivalPlatform",
            comment_lines: ["The platform where the train arrives."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          arrival_station: {
            schema_name: "arrivalStation",
            schema_url: "https://schema.org/arrivalStation",
            comment_lines: ["The station where the train trip ends."].freeze,
            ranges: ["TrainStation"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          departure_platform: {
            schema_name: "departurePlatform",
            schema_url: "https://schema.org/departurePlatform",
            comment_lines: ["The platform from which the train departs."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          departure_station: {
            schema_name: "departureStation",
            schema_url: "https://schema.org/departureStation",
            comment_lines: ["The station from which the train departs."].freeze,
            ranges: ["TrainStation"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          train_name: {
            schema_name: "trainName",
            schema_url: "https://schema.org/trainName",
            comment_lines: ["The name of the train (e.g. The Orient Express)."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          train_number: {
            schema_name: "trainNumber",
            schema_url: "https://schema.org/trainNumber",
            comment_lines: ["The unique identifier for the train."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The platform where the train arrives.
      def arrival_platform
        read_property(:arrival_platform)
      end

      # The platform where the train arrives.
      def arrival_platform=(value)
        write_property(:arrival_platform, value)
      end

      # The station where the train trip ends.
      def arrival_station
        read_property(:arrival_station)
      end

      # The station where the train trip ends.
      def arrival_station=(value)
        write_property(:arrival_station, value)
      end

      # The platform from which the train departs.
      def departure_platform
        read_property(:departure_platform)
      end

      # The platform from which the train departs.
      def departure_platform=(value)
        write_property(:departure_platform, value)
      end

      # The station from which the train departs.
      def departure_station
        read_property(:departure_station)
      end

      # The station from which the train departs.
      def departure_station=(value)
        write_property(:departure_station, value)
      end

      # The name of the train (e.g. The Orient Express).
      def train_name
        read_property(:train_name)
      end

      # The name of the train (e.g. The Orient Express).
      def train_name=(value)
        write_property(:train_name, value)
      end

      # The unique identifier for the train.
      def train_number
        read_property(:train_number)
      end

      # The unique identifier for the train.
      def train_number=(value)
        write_property(:train_number, value)
      end
    end
  end
end
