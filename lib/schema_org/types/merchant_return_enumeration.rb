# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  # https://schema.org/MerchantReturnEnumeration
  #
  # NOTE: Supersedes `ProductReturnEnumeration`.
  #
  # Enumerates several kinds of product return policies.
  class MerchantReturnEnumeration < Base
    include Mixins::MerchantReturnEnumeration

    SCHEMA_NAME = "MerchantReturnEnumeration"
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
    MERCHANT_RETURN_FINITE_RETURN_WINDOW = EnumerationValue.new("MerchantReturnFiniteReturnWindow", [SchemaOrg::MerchantReturnEnumeration])
    MERCHANT_RETURN_NOT_PERMITTED = EnumerationValue.new("MerchantReturnNotPermitted", [SchemaOrg::MerchantReturnEnumeration])
    MERCHANT_RETURN_UNLIMITED_WINDOW = EnumerationValue.new("MerchantReturnUnlimitedWindow", [SchemaOrg::MerchantReturnEnumeration])
    MERCHANT_RETURN_UNSPECIFIED = EnumerationValue.new("MerchantReturnUnspecified", [SchemaOrg::MerchantReturnEnumeration])
    VALUES = [MERCHANT_RETURN_FINITE_RETURN_WINDOW, MERCHANT_RETURN_NOT_PERMITTED, MERCHANT_RETURN_UNLIMITED_WINDOW, MERCHANT_RETURN_UNSPECIFIED].freeze

    def self.values
      VALUES
    end
  end
end
