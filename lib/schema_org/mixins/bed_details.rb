# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module BedDetails
      include Intangible

      def self.schema_property_definitions
        {
          number_of_beds: {
            schema_name: "numberOfBeds",
            schema_url: "https://schema.org/numberOfBeds",
            comment_lines: ["The quantity of the given bed type available in the HotelRoom, Suite, House, or Apartment."].freeze,
            ranges: ["Number"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          type_of_bed: {
            schema_name: "typeOfBed",
            schema_url: "https://schema.org/typeOfBed",
            comment_lines: ["The type of bed to which the BedDetail refers, i.e. the type of bed available in the quantity indicated by quantity."].freeze,
            ranges: ["BedType", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The quantity of the given bed type available in the HotelRoom, Suite, House, or Apartment.
      def number_of_beds
        read_property(:number_of_beds)
      end

      # The quantity of the given bed type available in the HotelRoom, Suite, House, or Apartment.
      def number_of_beds=(value)
        write_property(:number_of_beds, value)
      end

      # The type of bed to which the BedDetail refers, i.e. the type of bed available in the quantity indicated by quantity.
      def type_of_bed
        read_property(:type_of_bed)
      end

      # The type of bed to which the BedDetail refers, i.e. the type of bed available in the quantity indicated by quantity.
      def type_of_bed=(value)
        write_property(:type_of_bed, value)
      end
    end
  end
end
