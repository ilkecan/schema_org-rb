# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module RentalCarReservation
      include Reservation

      def self.schema_property_definitions
        {
          dropoff_location: {
            schema_name: "dropoffLocation",
            schema_url: "https://schema.org/dropoffLocation",
            comment_lines: ["Where a rental car can be dropped off."].freeze,
            ranges: ["Place"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          dropoff_time: {
            schema_name: "dropoffTime",
            schema_url: "https://schema.org/dropoffTime",
            comment_lines: ["When a rental car can be dropped off."].freeze,
            ranges: ["DateTime"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          pickup_location: {
            schema_name: "pickupLocation",
            schema_url: "https://schema.org/pickupLocation",
            comment_lines: ["Where a taxi will pick up a passenger or a rental car can be picked up."].freeze,
            ranges: ["Place"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          pickup_time: {
            schema_name: "pickupTime",
            schema_url: "https://schema.org/pickupTime",
            comment_lines: ["When a taxi will pick up a passenger or a rental car can be picked up."].freeze,
            ranges: ["DateTime"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # Where a rental car can be dropped off.
      def dropoff_location
        read_property(:dropoff_location)
      end

      # Where a rental car can be dropped off.
      def dropoff_location=(value)
        write_property(:dropoff_location, value)
      end

      # When a rental car can be dropped off.
      def dropoff_time
        read_property(:dropoff_time)
      end

      # When a rental car can be dropped off.
      def dropoff_time=(value)
        write_property(:dropoff_time, value)
      end

      # Where a taxi will pick up a passenger or a rental car can be picked up.
      def pickup_location
        read_property(:pickup_location)
      end

      # Where a taxi will pick up a passenger or a rental car can be picked up.
      def pickup_location=(value)
        write_property(:pickup_location, value)
      end

      # When a taxi will pick up a passenger or a rental car can be picked up.
      def pickup_time
        read_property(:pickup_time)
      end

      # When a taxi will pick up a passenger or a rental car can be picked up.
      def pickup_time=(value)
        write_property(:pickup_time, value)
      end
    end
  end
end
