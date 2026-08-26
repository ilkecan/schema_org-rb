# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module Seat
      include Intangible

      def self.schema_property_definitions
        {
          seat_number: {
            schema_name: "seatNumber",
            schema_url: "https://schema.org/seatNumber",
            comment_lines: ["The location of the reserved seat (e.g., 27)."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          seat_row: {
            schema_name: "seatRow",
            schema_url: "https://schema.org/seatRow",
            comment_lines: ["The row location of the reserved seat (e.g., B)."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          seat_section: {
            schema_name: "seatSection",
            schema_url: "https://schema.org/seatSection",
            comment_lines: ["The section location of the reserved seat (e.g. Orchestra)."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          seating_type: {
            schema_name: "seatingType",
            schema_url: "https://schema.org/seatingType",
            comment_lines: ["The type/class of the seat."].freeze,
            ranges: ["QualitativeValue", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The location of the reserved seat (e.g., 27).
      def seat_number
        read_property(:seat_number)
      end

      # The location of the reserved seat (e.g., 27).
      def seat_number=(value)
        write_property(:seat_number, value)
      end

      # The row location of the reserved seat (e.g., B).
      def seat_row
        read_property(:seat_row)
      end

      # The row location of the reserved seat (e.g., B).
      def seat_row=(value)
        write_property(:seat_row, value)
      end

      # The section location of the reserved seat (e.g. Orchestra).
      def seat_section
        read_property(:seat_section)
      end

      # The section location of the reserved seat (e.g. Orchestra).
      def seat_section=(value)
        write_property(:seat_section, value)
      end

      # The type/class of the seat.
      def seating_type
        read_property(:seating_type)
      end

      # The type/class of the seat.
      def seating_type=(value)
        write_property(:seating_type, value)
      end
    end
  end
end
