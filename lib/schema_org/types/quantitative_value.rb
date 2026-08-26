# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/QuantitativeValue
  #
  # A point value or interval for product characteristics and other purposes.
  class QuantitativeValue < Base
    include Mixins::QuantitativeValue

    SCHEMA_NAME = "QuantitativeValue"
    SCHEMA_TYPES = [self, SchemaOrg::StructuredValue, SchemaOrg::Intangible, SchemaOrg::Thing].freeze

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
