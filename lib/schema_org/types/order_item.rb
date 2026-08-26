module SchemaOrg
  # https://schema.org/OrderItem
  #
  # An order item is a line of an order. It includes the quantity and shipping details of a bought offer.
  class OrderItem < Base
    include Mixins::OrderItem
    SCHEMA_TYPES = [self, SchemaOrg::StructuredValue, SchemaOrg::Intangible, SchemaOrg::Thing].freeze

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
