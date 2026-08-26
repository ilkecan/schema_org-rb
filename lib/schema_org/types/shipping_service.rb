# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/ShippingService
  #
  # ShippingService represents the criteria used to determine if and how an offer could be shipped to a customer.
  class ShippingService < Base
    include Mixins::ShippingService

    SCHEMA_NAME = "ShippingService"
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
