# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  # https://schema.org/MapCategoryType
  #
  # An enumeration of several kinds of Map.
  class MapCategoryType < Base
    include Mixins::MapCategoryType

    SCHEMA_NAME = "MapCategoryType"
    SCHEMA_TYPES = [self, SchemaOrg::Enumeration, SchemaOrg::Intangible, SchemaOrg::Thing].freeze

    class << self
      def schema_name
        SCHEMA_NAME
      end

      def schema_types
        SCHEMA_TYPES
      end

      def schema_type?(other_type)
        Base.schema_type_argument!(other_type)
        SCHEMA_TYPES.include?(other_type)
      end

      def new(**properties)
        super
      end
    end
    PARKING_MAP = EnumerationValue.new("ParkingMap", [SchemaOrg::MapCategoryType])
    SEATING_MAP = EnumerationValue.new("SeatingMap", [SchemaOrg::MapCategoryType])
    TRANSIT_MAP = EnumerationValue.new("TransitMap", [SchemaOrg::MapCategoryType])
    VENUE_MAP = EnumerationValue.new("VenueMap", [SchemaOrg::MapCategoryType])
    VALUES = [PARKING_MAP, SEATING_MAP, TRANSIT_MAP, VENUE_MAP].freeze

    def self.values
      VALUES
    end
  end
end
