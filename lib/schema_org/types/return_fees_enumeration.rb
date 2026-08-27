# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  # https://schema.org/ReturnFeesEnumeration
  #
  # Enumerates several kinds of policies for product return fees.
  class ReturnFeesEnumeration < Base
    include Mixins::ReturnFeesEnumeration

    SCHEMA_NAME = "ReturnFeesEnumeration"
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
    FREE_RETURN = EnumerationValue.new("FreeReturn", [SchemaOrg::ReturnFeesEnumeration])
    ORIGINAL_SHIPPING_FEES = EnumerationValue.new("OriginalShippingFees", [SchemaOrg::ReturnFeesEnumeration])
    RESTOCKING_FEES = EnumerationValue.new("RestockingFees", [SchemaOrg::ReturnFeesEnumeration])
    RETURN_FEES_CUSTOMER_RESPONSIBILITY = EnumerationValue.new("ReturnFeesCustomerResponsibility", [SchemaOrg::ReturnFeesEnumeration])
    RETURN_SHIPPING_FEES = EnumerationValue.new("ReturnShippingFees", [SchemaOrg::ReturnFeesEnumeration])
    VALUES = [FREE_RETURN, ORIGINAL_SHIPPING_FEES, RESTOCKING_FEES, RETURN_FEES_CUSTOMER_RESPONSIBILITY, RETURN_SHIPPING_FEES].freeze

    def self.values
      VALUES
    end
  end
end
