# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  # https://schema.org/FulfillmentTypeEnumeration
  #
  # A type of product fulfillment.
  class FulfillmentTypeEnumeration < Base
    include Mixins::FulfillmentTypeEnumeration

    SCHEMA_NAME = "FulfillmentTypeEnumeration"
    SCHEMA_TYPES = [self, SchemaOrg::Enumeration, SchemaOrg::Intangible, SchemaOrg::Thing].freeze

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
    FULFILLMENT_TYPE_COLLECTION_POINT = EnumerationValue.new("FulfillmentTypeCollectionPoint", [SchemaOrg::FulfillmentTypeEnumeration])
    FULFILLMENT_TYPE_DELIVERY = EnumerationValue.new("FulfillmentTypeDelivery", [SchemaOrg::FulfillmentTypeEnumeration])
    FULFILLMENT_TYPE_PICKUP_DROPOFF = EnumerationValue.new("FulfillmentTypePickupDropoff", [SchemaOrg::FulfillmentTypeEnumeration])
    FULFILLMENT_TYPE_PICKUP_IN_STORE = EnumerationValue.new("FulfillmentTypePickupInStore", [SchemaOrg::FulfillmentTypeEnumeration])
    FULFILLMENT_TYPE_SCHEDULED_DELIVERY = EnumerationValue.new("FulfillmentTypeScheduledDelivery", [SchemaOrg::FulfillmentTypeEnumeration])
    VALUES = [FULFILLMENT_TYPE_COLLECTION_POINT, FULFILLMENT_TYPE_DELIVERY, FULFILLMENT_TYPE_PICKUP_DROPOFF, FULFILLMENT_TYPE_PICKUP_IN_STORE, FULFILLMENT_TYPE_SCHEDULED_DELIVERY].freeze

    def self.values
      VALUES
    end
  end
end
