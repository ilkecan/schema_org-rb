# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  # https://schema.org/OrderStatus
  #
  # Enumerated status values for Order.
  class OrderStatus < Base
    include Mixins::OrderStatus

    SCHEMA_NAME = "OrderStatus"
    SCHEMA_TYPES = [self, SchemaOrg::StatusEnumeration, SchemaOrg::Enumeration, SchemaOrg::Intangible, SchemaOrg::Thing].freeze

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
    ORDER_CANCELLED = EnumerationValue.new("OrderCancelled", [SchemaOrg::OrderStatus])
    ORDER_DELIVERED = EnumerationValue.new("OrderDelivered", [SchemaOrg::OrderStatus])
    ORDER_IN_TRANSIT = EnumerationValue.new("OrderInTransit", [SchemaOrg::OrderStatus])
    ORDER_PAYMENT_DUE = EnumerationValue.new("OrderPaymentDue", [SchemaOrg::OrderStatus])
    ORDER_PICKUP_AVAILABLE = EnumerationValue.new("OrderPickupAvailable", [SchemaOrg::OrderStatus])
    ORDER_PROBLEM = EnumerationValue.new("OrderProblem", [SchemaOrg::OrderStatus])
    ORDER_PROCESSING = EnumerationValue.new("OrderProcessing", [SchemaOrg::OrderStatus])
    ORDER_RETURNED = EnumerationValue.new("OrderReturned", [SchemaOrg::OrderStatus])
    VALUES = [ORDER_CANCELLED, ORDER_DELIVERED, ORDER_IN_TRANSIT, ORDER_PAYMENT_DUE, ORDER_PICKUP_AVAILABLE, ORDER_PROBLEM, ORDER_PROCESSING, ORDER_RETURNED].freeze

    def self.values
      VALUES
    end
  end
end
