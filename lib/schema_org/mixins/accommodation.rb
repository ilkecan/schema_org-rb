# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module Accommodation
      include Place

      def self.schema_property_definitions
        {
          accommodation_category: {
            schema_name: "accommodationCategory",
            schema_url: "https://schema.org/accommodationCategory",
            comment_lines: ["Category of an [[Accommodation]], following real estate conventions, e.g. RESO (see [PropertySubType](https://ddwiki.reso.org/display/DDW17/PropertySubType+Field), and [PropertyType](https://ddwiki.reso.org/display/DDW17/PropertyType+Field) fields  for suggested values)."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          accommodation_floor_plan: {
            schema_name: "accommodationFloorPlan",
            schema_url: "https://schema.org/accommodationFloorPlan",
            comment_lines: ["A floorplan of some [[Accommodation]]."].freeze,
            ranges: ["FloorPlan"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
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
          floor_level: {
            schema_name: "floorLevel",
            schema_url: "https://schema.org/floorLevel",
            comment_lines: ["The floor level for an [[Accommodation]] in a multi-storey building. Since counting", "  systems [vary internationally](https://en.wikipedia.org/wiki/Storey#Consecutive_number_floor_designations), the local system should be used where possible."].freeze,
            ranges: ["Text"].freeze,
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
          lease_length: {
            schema_name: "leaseLength",
            schema_url: "https://schema.org/leaseLength",
            comment_lines: ["Length of the lease for some [[Accommodation]], either particular to some [[Offer]] or in some cases intrinsic to the property."].freeze,
            ranges: ["Duration", "QuantitativeValue"].freeze,
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
          occupancy: {
            schema_name: "occupancy",
            schema_url: "https://schema.org/occupancy",
            comment_lines: ["The allowed total occupancy for the accommodation in persons (including infants etc). For individual accommodations, this is not necessarily the legal maximum but defines the permitted usage as per the contractual agreement (e.g. a double room used by a single person).", "Typical unit code(s): C62 for person."].freeze,
            ranges: ["QuantitativeValue"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          permitted_usage: {
            schema_name: "permittedUsage",
            schema_url: "https://schema.org/permittedUsage",
            comment_lines: ["Indications regarding the permitted usage of the accommodation."].freeze,
            ranges: ["Text"].freeze,
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
          }.freeze,
          year_built: {
            schema_name: "yearBuilt",
            schema_url: "https://schema.org/yearBuilt",
            comment_lines: ["The year an [[Accommodation]] was constructed. This corresponds to the [YearBuilt field in RESO](https://ddwiki.reso.org/display/DDW17/YearBuilt+Field)."].freeze,
            ranges: ["Number"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # Category of an [[Accommodation]], following real estate conventions, e.g. RESO (see [PropertySubType](https://ddwiki.reso.org/display/DDW17/PropertySubType+Field), and [PropertyType](https://ddwiki.reso.org/display/DDW17/PropertyType+Field) fields  for suggested values).
      def accommodation_category
        read_property(:accommodation_category)
      end

      # Category of an [[Accommodation]], following real estate conventions, e.g. RESO (see [PropertySubType](https://ddwiki.reso.org/display/DDW17/PropertySubType+Field), and [PropertyType](https://ddwiki.reso.org/display/DDW17/PropertyType+Field) fields  for suggested values).
      def accommodation_category=(value)
        write_property(:accommodation_category, value)
      end

      # A floorplan of some [[Accommodation]].
      def accommodation_floor_plan
        read_property(:accommodation_floor_plan)
      end

      # A floorplan of some [[Accommodation]].
      def accommodation_floor_plan=(value)
        write_property(:accommodation_floor_plan, value)
      end

      # An amenity feature (e.g. a characteristic or service) of the Accommodation. This generic property does not make a statement about whether the feature is included in an offer for the main accommodation or available at extra costs.
      def amenity_feature
        read_property(:amenity_feature)
      end

      # An amenity feature (e.g. a characteristic or service) of the Accommodation. This generic property does not make a statement about whether the feature is included in an offer for the main accommodation or available at extra costs.
      def amenity_feature=(value)
        write_property(:amenity_feature, value)
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

      # The floor level for an [[Accommodation]] in a multi-storey building. Since counting
      #   systems [vary internationally](https://en.wikipedia.org/wiki/Storey#Consecutive_number_floor_designations), the local system should be used where possible.
      def floor_level
        read_property(:floor_level)
      end

      # The floor level for an [[Accommodation]] in a multi-storey building. Since counting
      #   systems [vary internationally](https://en.wikipedia.org/wiki/Storey#Consecutive_number_floor_designations), the local system should be used where possible.
      def floor_level=(value)
        write_property(:floor_level, value)
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

      # Length of the lease for some [[Accommodation]], either particular to some [[Offer]] or in some cases intrinsic to the property.
      def lease_length
        read_property(:lease_length)
      end

      # Length of the lease for some [[Accommodation]], either particular to some [[Offer]] or in some cases intrinsic to the property.
      def lease_length=(value)
        write_property(:lease_length, value)
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

      # Indications regarding the permitted usage of the accommodation.
      def permitted_usage
        read_property(:permitted_usage)
      end

      # Indications regarding the permitted usage of the accommodation.
      def permitted_usage=(value)
        write_property(:permitted_usage, value)
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

      # The year an [[Accommodation]] was constructed. This corresponds to the [YearBuilt field in RESO](https://ddwiki.reso.org/display/DDW17/YearBuilt+Field).
      def year_built
        read_property(:year_built)
      end

      # The year an [[Accommodation]] was constructed. This corresponds to the [YearBuilt field in RESO](https://ddwiki.reso.org/display/DDW17/YearBuilt+Field).
      def year_built=(value)
        write_property(:year_built, value)
      end
    end
  end
end
