# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/BusOrCoach
  #
  # A bus (also omnibus or autobus) is a road vehicle designed to carry passengers. Coaches are luxury buses, usually in service for long distance travel.
  class BusOrCoach < Base
    include Mixins::BusOrCoach

    SCHEMA_NAME = "BusOrCoach"
    SCHEMA_TYPES = [self, SchemaOrg::Vehicle, SchemaOrg::Product, SchemaOrg::Thing].freeze

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
  end
end
