module SchemaOrg
  # https://schema.org/PaymentChargeSpecification
  #
  # The costs of settling the payment using a particular payment method.
  class PaymentChargeSpecification < Base
    include Mixins::PaymentChargeSpecification
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
