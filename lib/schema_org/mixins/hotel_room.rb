# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module HotelRoom
      include Room

      def self.schema_property_definitions
        {
          bed: {
            schema_name: "bed",
            schema_url: "https://schema.org/bed",
            comment_lines: ["The type of bed or beds included in the accommodation. For the single case of just one bed of a certain type, you use bed directly with a text.", "      If you want to indicate the quantity of a certain kind of bed, use an instance of BedDetails. For more detailed information, use the amenityFeature property."].freeze,
            ranges: ["BedDetails", "BedType", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          occupancy: {
            schema_name: "occupancy",
            schema_url: "https://schema.org/occupancy",
            comment_lines: ["The allowed total occupancy for the accommodation in persons (including infants etc). For individual accommodations, this is not necessarily the legal maximum but defines the permitted usage as per the contractual agreement (e.g. a double room used by a single person).", "Typical unit code(s): C62 for person."].freeze,
            ranges: ["QuantitativeValue"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The type of bed or beds included in the accommodation. For the single case of just one bed of a certain type, you use bed directly with a text.
      #       If you want to indicate the quantity of a certain kind of bed, use an instance of BedDetails. For more detailed information, use the amenityFeature property.
      def bed
        read_property(:bed)
      end

      # The type of bed or beds included in the accommodation. For the single case of just one bed of a certain type, you use bed directly with a text.
      #       If you want to indicate the quantity of a certain kind of bed, use an instance of BedDetails. For more detailed information, use the amenityFeature property.
      def bed=(value)
        write_property(:bed, value)
      end

      # The allowed total occupancy for the accommodation in persons (including infants etc). For individual accommodations, this is not necessarily the legal maximum but defines the permitted usage as per the contractual agreement (e.g. a double room used by a single person).
      # Typical unit code(s): C62 for person.
      def occupancy
        read_property(:occupancy)
      end

      # The allowed total occupancy for the accommodation in persons (including infants etc). For individual accommodations, this is not necessarily the legal maximum but defines the permitted usage as per the contractual agreement (e.g. a double room used by a single person).
      # Typical unit code(s): C62 for person.
      def occupancy=(value)
        write_property(:occupancy, value)
      end
    end
  end
end
