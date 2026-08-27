# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module TaxiReservation
      include Reservation

      def self.schema_property_definitions
        {
          party_size: {
            schema_name: "partySize",
            schema_url: "https://schema.org/partySize",
            comment_lines: ["Number of people the reservation should accommodate."].freeze,
            ranges: ["Integer", "QuantitativeValue"].freeze,
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

      # Number of people the reservation should accommodate.
      def party_size
        read_property(:party_size)
      end

      # Number of people the reservation should accommodate.
      def party_size=(value)
        write_property(:party_size, value)
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
