# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/ProductReturnEnumeration
  #
  # NOTE: Superseded by `MerchantReturnEnumeration`.
  #
  # ProductReturnEnumeration enumerates several kinds of product return policy. Note that this structure may not capture all aspects of the policy.
  class ProductReturnEnumeration < Base
    include Mixins::ProductReturnEnumeration

    SCHEMA_NAME = "ProductReturnEnumeration"
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
    PRODUCT_RETURN_FINITE_RETURN_WINDOW = EnumerationValue.new("ProductReturnFiniteReturnWindow", [SchemaOrg::ProductReturnEnumeration])
    PRODUCT_RETURN_NOT_PERMITTED = EnumerationValue.new("ProductReturnNotPermitted", [SchemaOrg::ProductReturnEnumeration])
    PRODUCT_RETURN_UNLIMITED_WINDOW = EnumerationValue.new("ProductReturnUnlimitedWindow", [SchemaOrg::ProductReturnEnumeration])
    PRODUCT_RETURN_UNSPECIFIED = EnumerationValue.new("ProductReturnUnspecified", [SchemaOrg::ProductReturnEnumeration])
    VALUES = [PRODUCT_RETURN_FINITE_RETURN_WINDOW, PRODUCT_RETURN_NOT_PERMITTED, PRODUCT_RETURN_UNLIMITED_WINDOW, PRODUCT_RETURN_UNSPECIFIED].freeze

    def self.values
      VALUES
    end
  end
end
