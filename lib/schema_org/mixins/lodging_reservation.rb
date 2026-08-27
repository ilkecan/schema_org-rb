# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module LodgingReservation
      include Reservation

      def self.schema_property_definitions
        {
          checkin_time: {
            schema_name: "checkinTime",
            schema_url: "https://schema.org/checkinTime",
            comment_lines: ["The earliest someone may check into a lodging establishment."].freeze,
            ranges: ["DateTime", "Time"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          checkout_time: {
            schema_name: "checkoutTime",
            schema_url: "https://schema.org/checkoutTime",
            comment_lines: ["The latest someone may check out of a lodging establishment."].freeze,
            ranges: ["DateTime", "Time"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          lodging_unit_description: {
            schema_name: "lodgingUnitDescription",
            schema_url: "https://schema.org/lodgingUnitDescription",
            comment_lines: ["A full description of the lodging unit."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          lodging_unit_type: {
            schema_name: "lodgingUnitType",
            schema_url: "https://schema.org/lodgingUnitType",
            comment_lines: ["Textual description of the unit type (including suite vs. room, size of bed, etc.)."].freeze,
            ranges: ["QualitativeValue", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          num_adults: {
            schema_name: "numAdults",
            schema_url: "https://schema.org/numAdults",
            comment_lines: ["The number of adults staying in the unit."].freeze,
            ranges: ["Integer", "QuantitativeValue"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          num_children: {
            schema_name: "numChildren",
            schema_url: "https://schema.org/numChildren",
            comment_lines: ["The number of children staying in the unit."].freeze,
            ranges: ["Integer", "QuantitativeValue"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The earliest someone may check into a lodging establishment.
      def checkin_time
        read_property(:checkin_time)
      end

      # The earliest someone may check into a lodging establishment.
      def checkin_time=(value)
        write_property(:checkin_time, value)
      end

      # The latest someone may check out of a lodging establishment.
      def checkout_time
        read_property(:checkout_time)
      end

      # The latest someone may check out of a lodging establishment.
      def checkout_time=(value)
        write_property(:checkout_time, value)
      end

      # A full description of the lodging unit.
      def lodging_unit_description
        read_property(:lodging_unit_description)
      end

      # A full description of the lodging unit.
      def lodging_unit_description=(value)
        write_property(:lodging_unit_description, value)
      end

      # Textual description of the unit type (including suite vs. room, size of bed, etc.).
      def lodging_unit_type
        read_property(:lodging_unit_type)
      end

      # Textual description of the unit type (including suite vs. room, size of bed, etc.).
      def lodging_unit_type=(value)
        write_property(:lodging_unit_type, value)
      end

      # The number of adults staying in the unit.
      def num_adults
        read_property(:num_adults)
      end

      # The number of adults staying in the unit.
      def num_adults=(value)
        write_property(:num_adults, value)
      end

      # The number of children staying in the unit.
      def num_children
        read_property(:num_children)
      end

      # The number of children staying in the unit.
      def num_children=(value)
        write_property(:num_children, value)
      end
    end
  end
end
