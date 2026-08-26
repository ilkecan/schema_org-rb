# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/Car
  #
  # A car is a wheeled, self-powered motor vehicle used for transportation.
  class Car < Base
    include Mixins::Car

    SCHEMA_NAME = "Car"
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
