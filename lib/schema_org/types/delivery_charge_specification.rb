module SchemaOrg
  # https://schema.org/DeliveryChargeSpecification
  #
  # The price for the delivery of an offer using a particular delivery method.
  class DeliveryChargeSpecification < Base
    include Mixins::DeliveryChargeSpecification
    SCHEMA_TYPES = [self, SchemaOrg::PriceSpecification, SchemaOrg::StructuredValue, SchemaOrg::Intangible, SchemaOrg::Thing].freeze

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
  end
end
