# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module FloorPlan
      include Intangible

      def self.schema_property_definitions
        {
          amenity_feature: {
            schema_name: "amenityFeature",
            schema_url: "https://schema.org/amenityFeature",
            comment_lines: ["An amenity feature (e.g. a characteristic or service) of the Accommodation. This generic property does not make a statement about whether the feature is included in an offer for the main accommodation or available at extra costs."].freeze,
            ranges: ["LocationFeatureSpecification"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          floor_size: {
            schema_name: "floorSize",
            schema_url: "https://schema.org/floorSize",
            comment_lines: ["The size of the accommodation, e.g. in square meter or squarefoot.", "Typical unit code(s): MTK for square meter, FTK for square foot, or YDK for square yard."].freeze,
            ranges: ["QuantitativeValue"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          is_plan_for_apartment: {
            schema_name: "isPlanForApartment",
            schema_url: "https://schema.org/isPlanForApartment",
            comment_lines: ["Indicates some accommodation that this floor plan describes."].freeze,
            ranges: ["Accommodation"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          layout_image: {
            schema_name: "layoutImage",
            schema_url: "https://schema.org/layoutImage",
            comment_lines: ["A schematic image showing the floorplan layout."].freeze,
            ranges: ["ImageObject", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
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
          number_of_bathrooms_total: {
            schema_name: "numberOfBathroomsTotal",
            schema_url: "https://schema.org/numberOfBathroomsTotal",
            comment_lines: ["The total integer number of bathrooms in some [[Accommodation]], following real estate conventions as [documented in RESO](https://ddwiki.reso.org/display/DDW17/BathroomsTotalInteger+Field): \"The simple sum of the number of bathrooms. For example for a property with two Full Bathrooms and one Half Bathroom, the Bathrooms Total Integer will be 3.\". See also [[numberOfRooms]]."].freeze,
            ranges: ["Integer"].freeze,
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
          number_of_full_bathrooms: {
            schema_name: "numberOfFullBathrooms",
            schema_url: "https://schema.org/numberOfFullBathrooms",
            comment_lines: ["Number of full bathrooms - The total number of full and ¾ bathrooms in an [[Accommodation]]. This corresponds to the [BathroomsFull field in RESO](https://ddwiki.reso.org/display/DDW17/BathroomsFull+Field)."].freeze,
            ranges: ["Number"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          number_of_partial_bathrooms: {
            schema_name: "numberOfPartialBathrooms",
            schema_url: "https://schema.org/numberOfPartialBathrooms",
            comment_lines: ["Number of partial bathrooms - The total number of half and ¼ bathrooms in an [[Accommodation]]. This corresponds to the [BathroomsPartial field in RESO](https://ddwiki.reso.org/display/DDW17/BathroomsPartial+Field)."].freeze,
            ranges: ["Number"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          number_of_rooms: {
            schema_name: "numberOfRooms",
            schema_url: "https://schema.org/numberOfRooms",
            comment_lines: ["The number of rooms (excluding bathrooms and closets) of the accommodation or lodging business.", "Typical unit code(s): ROM for room or C62 for no unit. The type of room can be put in the unitText property of the QuantitativeValue."].freeze,
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
          }.freeze
        }.freeze
      end

      # An amenity feature (e.g. a characteristic or service) of the Accommodation. This generic property does not make a statement about whether the feature is included in an offer for the main accommodation or available at extra costs.
      def amenity_feature
        read_property(:amenity_feature)
      end

      # An amenity feature (e.g. a characteristic or service) of the Accommodation. This generic property does not make a statement about whether the feature is included in an offer for the main accommodation or available at extra costs.
      def amenity_feature=(value)
        write_property(:amenity_feature, value)
      end

      # The size of the accommodation, e.g. in square meter or squarefoot.
      # Typical unit code(s): MTK for square meter, FTK for square foot, or YDK for square yard.
      def floor_size
        read_property(:floor_size)
      end

      # The size of the accommodation, e.g. in square meter or squarefoot.
      # Typical unit code(s): MTK for square meter, FTK for square foot, or YDK for square yard.
      def floor_size=(value)
        write_property(:floor_size, value)
      end

      # Indicates some accommodation that this floor plan describes.
      def is_plan_for_apartment
        read_property(:is_plan_for_apartment)
      end

      # Indicates some accommodation that this floor plan describes.
      def is_plan_for_apartment=(value)
        write_property(:is_plan_for_apartment, value)
      end

      # A schematic image showing the floorplan layout.
      def layout_image
        read_property(:layout_image)
      end

      # A schematic image showing the floorplan layout.
      def layout_image=(value)
        write_property(:layout_image, value)
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

      # The total integer number of bathrooms in some [[Accommodation]], following real estate conventions as [documented in RESO](https://ddwiki.reso.org/display/DDW17/BathroomsTotalInteger+Field): "The simple sum of the number of bathrooms. For example for a property with two Full Bathrooms and one Half Bathroom, the Bathrooms Total Integer will be 3.". See also [[numberOfRooms]].
      def number_of_bathrooms_total
        read_property(:number_of_bathrooms_total)
      end

      # The total integer number of bathrooms in some [[Accommodation]], following real estate conventions as [documented in RESO](https://ddwiki.reso.org/display/DDW17/BathroomsTotalInteger+Field): "The simple sum of the number of bathrooms. For example for a property with two Full Bathrooms and one Half Bathroom, the Bathrooms Total Integer will be 3.". See also [[numberOfRooms]].
      def number_of_bathrooms_total=(value)
        write_property(:number_of_bathrooms_total, value)
      end

      # The total integer number of bedrooms in a some [[Accommodation]], [[ApartmentComplex]] or [[FloorPlan]].
      def number_of_bedrooms
        read_property(:number_of_bedrooms)
      end

      # The total integer number of bedrooms in a some [[Accommodation]], [[ApartmentComplex]] or [[FloorPlan]].
      def number_of_bedrooms=(value)
        write_property(:number_of_bedrooms, value)
      end

      # Number of full bathrooms - The total number of full and ¾ bathrooms in an [[Accommodation]]. This corresponds to the [BathroomsFull field in RESO](https://ddwiki.reso.org/display/DDW17/BathroomsFull+Field).
      def number_of_full_bathrooms
        read_property(:number_of_full_bathrooms)
      end

      # Number of full bathrooms - The total number of full and ¾ bathrooms in an [[Accommodation]]. This corresponds to the [BathroomsFull field in RESO](https://ddwiki.reso.org/display/DDW17/BathroomsFull+Field).
      def number_of_full_bathrooms=(value)
        write_property(:number_of_full_bathrooms, value)
      end

      # Number of partial bathrooms - The total number of half and ¼ bathrooms in an [[Accommodation]]. This corresponds to the [BathroomsPartial field in RESO](https://ddwiki.reso.org/display/DDW17/BathroomsPartial+Field).
      def number_of_partial_bathrooms
        read_property(:number_of_partial_bathrooms)
      end

      # Number of partial bathrooms - The total number of half and ¼ bathrooms in an [[Accommodation]]. This corresponds to the [BathroomsPartial field in RESO](https://ddwiki.reso.org/display/DDW17/BathroomsPartial+Field).
      def number_of_partial_bathrooms=(value)
        write_property(:number_of_partial_bathrooms, value)
      end

      # The number of rooms (excluding bathrooms and closets) of the accommodation or lodging business.
      # Typical unit code(s): ROM for room or C62 for no unit. The type of room can be put in the unitText property of the QuantitativeValue.
      def number_of_rooms
        read_property(:number_of_rooms)
      end

      # The number of rooms (excluding bathrooms and closets) of the accommodation or lodging business.
      # Typical unit code(s): ROM for room or C62 for no unit. The type of room can be put in the unitText property of the QuantitativeValue.
      def number_of_rooms=(value)
        write_property(:number_of_rooms, value)
      end

      # Indicates whether pets are allowed to enter the accommodation or lodging business. More detailed information can be put in a text value.
      def pets_allowed
        read_property(:pets_allowed)
      end

      # Indicates whether pets are allowed to enter the accommodation or lodging business. More detailed information can be put in a text value.
      def pets_allowed=(value)
        write_property(:pets_allowed, value)
      end
    end
  end
end
