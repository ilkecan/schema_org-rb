# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/PaymentStatusType
  #
  # A specific payment status. For example, PaymentDue, PaymentComplete, etc.
  class PaymentStatusType < Base
    include Mixins::PaymentStatusType

    SCHEMA_NAME = "PaymentStatusType"
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
    PAYMENT_AUTOMATICALLY_APPLIED = EnumerationValue.new("PaymentAutomaticallyApplied", [SchemaOrg::PaymentStatusType])
    PAYMENT_COMPLETE = EnumerationValue.new("PaymentComplete", [SchemaOrg::PaymentStatusType])
    PAYMENT_DECLINED = EnumerationValue.new("PaymentDeclined", [SchemaOrg::PaymentStatusType])
    PAYMENT_DUE = EnumerationValue.new("PaymentDue", [SchemaOrg::PaymentStatusType])
    PAYMENT_PAST_DUE = EnumerationValue.new("PaymentPastDue", [SchemaOrg::PaymentStatusType])
    VALUES = [PAYMENT_AUTOMATICALLY_APPLIED, PAYMENT_COMPLETE, PAYMENT_DECLINED, PAYMENT_DUE, PAYMENT_PAST_DUE].freeze

    def self.values
      VALUES
    end
  end
end
