# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module ApartmentComplex
      include Residence

      def self.schema_property_definitions
        {
          number_of_accommodation_units: {
            schema_name: "numberOfAccommodationUnits",
            schema_url: "https://schema.org/numberOfAccommodationUnits",
            comment_lines: ["Indicates the total (available plus unavailable) number of accommodation units in an [[ApartmentComplex]], or the number of accommodation units for a specific [[FloorPlan]] (within its specific [[ApartmentComplex]]). See also [[numberOfAvailableAccommodationUnits]]."].freeze,
            ranges: ["QuantitativeValue"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          number_of_available_accommodation_units: {
            schema_name: "numberOfAvailableAccommodationUnits",
            schema_url: "https://schema.org/numberOfAvailableAccommodationUnits",
            comment_lines: ["Indicates the number of available accommodation units in an [[ApartmentComplex]], or the number of accommodation units for a specific [[FloorPlan]] (within its specific [[ApartmentComplex]]). See also [[numberOfAccommodationUnits]]."].freeze,
            ranges: ["QuantitativeValue"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          number_of_bedrooms: {
            schema_name: "numberOfBedrooms",
            schema_url: "https://schema.org/numberOfBedrooms",
            comment_lines: ["The total integer number of bedrooms in a some [[Accommodation]], [[ApartmentComplex]] or [[FloorPlan]]."].freeze,
            ranges: ["Number", "QuantitativeValue"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          pets_allowed: {
            schema_name: "petsAllowed",
            schema_url: "https://schema.org/petsAllowed",
            comment_lines: ["Indicates whether pets are allowed to enter the accommodation or lodging business. More detailed information can be put in a text value."].freeze,
            ranges: ["Boolean", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          tour_booking_page: {
            schema_name: "tourBookingPage",
            schema_url: "https://schema.org/tourBookingPage",
            comment_lines: ["A page providing information on how to book a tour of some [[Place]], such as an [[Accommodation]] or [[ApartmentComplex]] in a real estate setting, as well as other kinds of tours as appropriate."].freeze,
            ranges: ["URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # Indicates the total (available plus unavailable) number of accommodation units in an [[ApartmentComplex]], or the number of accommodation units for a specific [[FloorPlan]] (within its specific [[ApartmentComplex]]). See also [[numberOfAvailableAccommodationUnits]].
      def number_of_accommodation_units
        read_property(:number_of_accommodation_units)
      end

      # Indicates the total (available plus unavailable) number of accommodation units in an [[ApartmentComplex]], or the number of accommodation units for a specific [[FloorPlan]] (within its specific [[ApartmentComplex]]). See also [[numberOfAvailableAccommodationUnits]].
      def number_of_accommodation_units=(value)
        write_property(:number_of_accommodation_units, value)
      end

      # Indicates the number of available accommodation units in an [[ApartmentComplex]], or the number of accommodation units for a specific [[FloorPlan]] (within its specific [[ApartmentComplex]]). See also [[numberOfAccommodationUnits]].
      def number_of_available_accommodation_units
        read_property(:number_of_available_accommodation_units)
      end

      # Indicates the number of available accommodation units in an [[ApartmentComplex]], or the number of accommodation units for a specific [[FloorPlan]] (within its specific [[ApartmentComplex]]). See also [[numberOfAccommodationUnits]].
      def number_of_available_accommodation_units=(value)
        write_property(:number_of_available_accommodation_units, value)
      end

      # The total integer number of bedrooms in a some [[Accommodation]], [[ApartmentComplex]] or [[FloorPlan]].
      def number_of_bedrooms
        read_property(:number_of_bedrooms)
      end

      # The total integer number of bedrooms in a some [[Accommodation]], [[ApartmentComplex]] or [[FloorPlan]].
      def number_of_bedrooms=(value)
        write_property(:number_of_bedrooms, value)
      end

      # Indicates whether pets are allowed to enter the accommodation or lodging business. More detailed information can be put in a text value.
      def pets_allowed
        read_property(:pets_allowed)
      end

      # Indicates whether pets are allowed to enter the accommodation or lodging business. More detailed information can be put in a text value.
      def pets_allowed=(value)
        write_property(:pets_allowed, value)
      end

      # A page providing information on how to book a tour of some [[Place]], such as an [[Accommodation]] or [[ApartmentComplex]] in a real estate setting, as well as other kinds of tours as appropriate.
      def tour_booking_page
        read_property(:tour_booking_page)
      end

      # A page providing information on how to book a tour of some [[Place]], such as an [[Accommodation]] or [[ApartmentComplex]] in a real estate setting, as well as other kinds of tours as appropriate.
      def tour_booking_page=(value)
        write_property(:tour_booking_page, value)
      end
    end
  end
end
