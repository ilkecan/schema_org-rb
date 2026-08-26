module SchemaOrg
  # https://schema.org/OrderStatus
  #
  # Enumerated status values for Order.
  class OrderStatus < Base
    include Mixins::OrderStatus
    SCHEMA_TYPES = [self, SchemaOrg::StatusEnumeration, SchemaOrg::Enumeration, SchemaOrg::Intangible, SchemaOrg::Thing].freeze

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
    ORDER_CANCELLED = EnumerationValue.new("OrderCancelled", self, [SchemaOrg::OrderStatus]).freeze
    ORDER_DELIVERED = EnumerationValue.new("OrderDelivered", self, [SchemaOrg::OrderStatus]).freeze
    ORDER_IN_TRANSIT = EnumerationValue.new("OrderInTransit", self, [SchemaOrg::OrderStatus]).freeze
    ORDER_PAYMENT_DUE = EnumerationValue.new("OrderPaymentDue", self, [SchemaOrg::OrderStatus]).freeze
    ORDER_PICKUP_AVAILABLE = EnumerationValue.new("OrderPickupAvailable", self, [SchemaOrg::OrderStatus]).freeze
    ORDER_PROBLEM = EnumerationValue.new("OrderProblem", self, [SchemaOrg::OrderStatus]).freeze
    ORDER_PROCESSING = EnumerationValue.new("OrderProcessing", self, [SchemaOrg::OrderStatus]).freeze
    ORDER_RETURNED = EnumerationValue.new("OrderReturned", self, [SchemaOrg::OrderStatus]).freeze
    VALUES = [ORDER_CANCELLED, ORDER_DELIVERED, ORDER_IN_TRANSIT, ORDER_PAYMENT_DUE, ORDER_PICKUP_AVAILABLE, ORDER_PROBLEM, ORDER_PROCESSING, ORDER_RETURNED].freeze

    def self.values
      VALUES
    end
  end
end
