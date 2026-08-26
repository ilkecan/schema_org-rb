# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/Motorcycle
  #
  # A motorcycle or motorbike is a single-track, two-wheeled motor vehicle.
  class Motorcycle < Base
    include Mixins::Motorcycle

    SCHEMA_NAME = "Motorcycle"
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
