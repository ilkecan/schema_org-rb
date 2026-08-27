# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  # https://schema.org/PaymentMethodType
  #
  # The type of payment method, only for generic payment types, specific forms of payments, like card payment should be expressed using subclasses of PaymentMethod.
  class PaymentMethodType < Base
    include Mixins::PaymentMethodType

    SCHEMA_NAME = "PaymentMethodType"
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
    BY_BANK_TRANSFER_IN_ADVANCE = EnumerationValue.new("ByBankTransferInAdvance", [SchemaOrg::PaymentMethodType])
    BY_INVOICE = EnumerationValue.new("ByInvoice", [SchemaOrg::PaymentMethodType])
    COD = EnumerationValue.new("COD", [SchemaOrg::PaymentMethodType])
    CASH = EnumerationValue.new("Cash", [SchemaOrg::PaymentMethodType])
    CHECK_IN_ADVANCE = EnumerationValue.new("CheckInAdvance", [SchemaOrg::PaymentMethodType])
    DIRECT_DEBIT = EnumerationValue.new("DirectDebit", [SchemaOrg::PaymentMethodType])
    IN_STORE_PREPAY = EnumerationValue.new("InStorePrepay", [SchemaOrg::PaymentMethodType])
    PHONE_CARRIER_PAYMENT = EnumerationValue.new("PhoneCarrierPayment", [SchemaOrg::PaymentMethodType])
    VALUES = [BY_BANK_TRANSFER_IN_ADVANCE, BY_INVOICE, COD, CASH, CHECK_IN_ADVANCE, DIRECT_DEBIT, IN_STORE_PREPAY, PHONE_CARRIER_PAYMENT].freeze

    def self.values
      VALUES
    end
  end
end
