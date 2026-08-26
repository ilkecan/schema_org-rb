# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/CarUsageType
  #
  # A value indicating a special usage of a car, e.g. commercial rental, driving school, or as a taxi.
  class CarUsageType < Base
    include Mixins::CarUsageType

    SCHEMA_NAME = "CarUsageType"
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
    DRIVING_SCHOOL_VEHICLE_USAGE = EnumerationValue.new("DrivingSchoolVehicleUsage", [SchemaOrg::CarUsageType])
    RENTAL_VEHICLE_USAGE = EnumerationValue.new("RentalVehicleUsage", [SchemaOrg::CarUsageType])
    TAXI_VEHICLE_USAGE = EnumerationValue.new("TaxiVehicleUsage", [SchemaOrg::CarUsageType])
    VALUES = [DRIVING_SCHOOL_VEHICLE_USAGE, RENTAL_VEHICLE_USAGE, TAXI_VEHICLE_USAGE].freeze

    def self.values
      VALUES
    end
  end
end
