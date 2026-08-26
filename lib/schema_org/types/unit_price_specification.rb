# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/UnitPriceSpecification
  #
  # The price asked for a given offer by the respective organization or person.
  class UnitPriceSpecification < Base
    include Mixins::UnitPriceSpecification

    SCHEMA_NAME = "UnitPriceSpecification"
    SCHEMA_TYPES = [self, SchemaOrg::PriceSpecification, SchemaOrg::StructuredValue, SchemaOrg::Intangible, SchemaOrg::Thing].freeze

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
