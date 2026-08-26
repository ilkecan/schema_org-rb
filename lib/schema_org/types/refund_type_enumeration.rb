# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/RefundTypeEnumeration
  #
  # Enumerates several kinds of product return refund types.
  class RefundTypeEnumeration < Base
    include Mixins::RefundTypeEnumeration

    SCHEMA_NAME = "RefundTypeEnumeration"
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
    EXCHANGE_REFUND = EnumerationValue.new("ExchangeRefund", [SchemaOrg::RefundTypeEnumeration])
    FULL_REFUND = EnumerationValue.new("FullRefund", [SchemaOrg::RefundTypeEnumeration])
    STORE_CREDIT_REFUND = EnumerationValue.new("StoreCreditRefund", [SchemaOrg::RefundTypeEnumeration])
    VALUES = [EXCHANGE_REFUND, FULL_REFUND, STORE_CREDIT_REFUND].freeze

    def self.values
      VALUES
    end
  end
end
