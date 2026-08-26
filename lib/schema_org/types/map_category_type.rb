module SchemaOrg
  # https://schema.org/MapCategoryType
  #
  # An enumeration of several kinds of Map.
  class MapCategoryType < Base
    include Mixins::MapCategoryType
    SCHEMA_TYPES = [self, SchemaOrg::Enumeration, SchemaOrg::Intangible, SchemaOrg::Thing].freeze

    class << self
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
    PARKING_MAP = EnumerationValue.new("ParkingMap", self, [SchemaOrg::MapCategoryType]).freeze
    SEATING_MAP = EnumerationValue.new("SeatingMap", self, [SchemaOrg::MapCategoryType]).freeze
    TRANSIT_MAP = EnumerationValue.new("TransitMap", self, [SchemaOrg::MapCategoryType]).freeze
    VENUE_MAP = EnumerationValue.new("VenueMap", self, [SchemaOrg::MapCategoryType]).freeze
    VALUES = [PARKING_MAP, SEATING_MAP, TRANSIT_MAP, VENUE_MAP].freeze

    def self.values
      VALUES
    end
  end
end
