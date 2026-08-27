# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  # https://schema.org/PurchaseType
  #
  # Enumerates a purchase type for an item.
  class PurchaseType < Base
    include Mixins::PurchaseType

    SCHEMA_NAME = "PurchaseType"
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
    PURCHASE_TYPE_LEASE = EnumerationValue.new("PurchaseTypeLease", [SchemaOrg::PurchaseType])
    PURCHASE_TYPE_NEW_PURCHASE = EnumerationValue.new("PurchaseTypeNewPurchase", [SchemaOrg::PurchaseType])
    PURCHASE_TYPE_TRADE_IN = EnumerationValue.new("PurchaseTypeTradeIn", [SchemaOrg::PurchaseType])
    PURCHASE_TYPE_USED_PURCHASE = EnumerationValue.new("PurchaseTypeUsedPurchase", [SchemaOrg::PurchaseType])
    VALUES = [PURCHASE_TYPE_LEASE, PURCHASE_TYPE_NEW_PURCHASE, PURCHASE_TYPE_TRADE_IN, PURCHASE_TYPE_USED_PURCHASE].freeze

    def self.values
      VALUES
    end
  end
end
