# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module Residence
      include Place

      def self.schema_property_definitions
        {
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
          floor_level: {
            schema_name: "floorLevel",
            schema_url: "https://schema.org/floorLevel",
            comment_lines: ["The floor level for an [[Accommodation]] in a multi-storey building. Since counting", "  systems [vary internationally](https://en.wikipedia.org/wiki/Storey#Consecutive_number_floor_designations), the local system should be used where possible."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # A floorplan of some [[Accommodation]].
      def accommodation_floor_plan
        read_property(:accommodation_floor_plan)
      end

      # A floorplan of some [[Accommodation]].
      def accommodation_floor_plan=(value)
        write_property(:accommodation_floor_plan, value)
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
    end
  end
end
