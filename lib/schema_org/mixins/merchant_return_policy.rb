# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module MerchantReturnPolicy
      include Intangible

      def self.schema_property_definitions
        {
          additional_property: {
            schema_name: "additionalProperty",
            schema_url: "https://schema.org/additionalProperty",
            comment_lines: ["A property-value pair representing an additional characteristic of the entity, e.g. a product feature or another characteristic for which there is no matching property in schema.org.\\n\\nNote: Publishers should be aware that applications designed to use specific schema.org properties (e.g. https://schema.org/width, https://schema.org/color, https://schema.org/gtin13, ...) will typically expect such data to be provided using those properties, rather than using the generic property/value mechanism."].freeze,
            ranges: ["PropertyValue"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          applicable_country: {
            schema_name: "applicableCountry",
            schema_url: "https://schema.org/applicableCountry",
            comment_lines: ["A country where a particular merchant return policy applies to, for example the two-letter ISO 3166-1 alpha-2 country code."].freeze,
            ranges: ["Country", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          customer_remorse_return_fees: {
            schema_name: "customerRemorseReturnFees",
            schema_url: "https://schema.org/customerRemorseReturnFees",
            comment_lines: ["The type of return fees if the product is returned due to customer remorse."].freeze,
            ranges: ["ReturnFeesEnumeration"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          customer_remorse_return_label_source: {
            schema_name: "customerRemorseReturnLabelSource",
            schema_url: "https://schema.org/customerRemorseReturnLabelSource",
            comment_lines: ["The method (from an enumeration) by which the customer obtains a return shipping label for a product returned due to customer remorse."].freeze,
            ranges: ["ReturnLabelSourceEnumeration"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          customer_remorse_return_shipping_fees_amount: {
            schema_name: "customerRemorseReturnShippingFeesAmount",
            schema_url: "https://schema.org/customerRemorseReturnShippingFeesAmount",
            comment_lines: ["The amount of shipping costs if a product is returned due to customer remorse. Applicable when property [[customerRemorseReturnFees]] equals [[ReturnShippingFees]]."].freeze,
            ranges: ["MonetaryAmount"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          in_store_returns_offered: {
            schema_name: "inStoreReturnsOffered",
            schema_url: "https://schema.org/inStoreReturnsOffered",
            comment_lines: ["Are in-store returns offered? (For more advanced return methods use the [[returnMethod]] property.)"].freeze,
            ranges: ["Boolean"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          item_condition: {
            schema_name: "itemCondition",
            schema_url: "https://schema.org/itemCondition",
            comment_lines: ["A predefined value from OfferItemCondition specifying the condition of the product or service, or the products or services included in the offer. Also used for product return policies to specify the condition of products accepted for returns."].freeze,
            ranges: ["OfferItemCondition"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          item_defect_return_fees: {
            schema_name: "itemDefectReturnFees",
            schema_url: "https://schema.org/itemDefectReturnFees",
            comment_lines: ["The type of return fees for returns of defect products."].freeze,
            ranges: ["ReturnFeesEnumeration"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          item_defect_return_label_source: {
            schema_name: "itemDefectReturnLabelSource",
            schema_url: "https://schema.org/itemDefectReturnLabelSource",
            comment_lines: ["The method (from an enumeration) by which the customer obtains a return shipping label for a defect product."].freeze,
            ranges: ["ReturnLabelSourceEnumeration"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          item_defect_return_shipping_fees_amount: {
            schema_name: "itemDefectReturnShippingFeesAmount",
            schema_url: "https://schema.org/itemDefectReturnShippingFeesAmount",
            comment_lines: ["Amount of shipping costs for defect product returns. Applicable when property [[itemDefectReturnFees]] equals [[ReturnShippingFees]]."].freeze,
            ranges: ["MonetaryAmount"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          merchant_return_days: {
            schema_name: "merchantReturnDays",
            schema_url: "https://schema.org/merchantReturnDays",
            comment_lines: ["Specifies either a fixed return date or the number of days (from the delivery date) that a product can be returned. Used when the [[returnPolicyCategory]] property is specified as [[MerchantReturnFiniteReturnWindow]]."].freeze,
            ranges: ["Date", "DateTime", "Integer"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: "productReturnDays"
          }.freeze,
          merchant_return_link: {
            schema_name: "merchantReturnLink",
            schema_url: "https://schema.org/merchantReturnLink",
            comment_lines: ["Specifies a Web page or service by URL, for product returns."].freeze,
            ranges: ["URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: "productReturnLink"
          }.freeze,
          refund_type: {
            schema_name: "refundType",
            schema_url: "https://schema.org/refundType",
            comment_lines: ["A refund type, from an enumerated list."].freeze,
            ranges: ["RefundTypeEnumeration"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          restocking_fee: {
            schema_name: "restockingFee",
            schema_url: "https://schema.org/restockingFee",
            comment_lines: ["Use [[MonetaryAmount]] to specify a fixed restocking fee for product returns, or use [[Number]] to specify a percentage of the product price paid by the customer."].freeze,
            ranges: ["MonetaryAmount", "Number"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          return_fees: {
            schema_name: "returnFees",
            schema_url: "https://schema.org/returnFees",
            comment_lines: ["The type of return fees for purchased products (for any return reason)."].freeze,
            ranges: ["ReturnFeesEnumeration"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          return_label_source: {
            schema_name: "returnLabelSource",
            schema_url: "https://schema.org/returnLabelSource",
            comment_lines: ["The method (from an enumeration) by which the customer obtains a return shipping label for a product returned for any reason."].freeze,
            ranges: ["ReturnLabelSourceEnumeration"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          return_method: {
            schema_name: "returnMethod",
            schema_url: "https://schema.org/returnMethod",
            comment_lines: ["The type of return method offered, specified from an enumeration."].freeze,
            ranges: ["ReturnMethodEnumeration"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          return_policy_category: {
            schema_name: "returnPolicyCategory",
            schema_url: "https://schema.org/returnPolicyCategory",
            comment_lines: ["Specifies an applicable return policy (from an enumeration)."].freeze,
            ranges: ["MerchantReturnEnumeration"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          return_policy_country: {
            schema_name: "returnPolicyCountry",
            schema_url: "https://schema.org/returnPolicyCountry",
            comment_lines: ["The country where the product has to be sent to for returns, for example \"Ireland\" using the [[name]] property of [[Country]]. You can also provide the two-letter [ISO 3166-1 alpha-2 country code](http://en.wikipedia.org/wiki/ISO_3166-1). Note that this can be different from the country where the product was originally shipped from or sent to."].freeze,
            ranges: ["Country", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          return_policy_seasonal_override: {
            schema_name: "returnPolicySeasonalOverride",
            schema_url: "https://schema.org/returnPolicySeasonalOverride",
            comment_lines: ["Seasonal override of a return policy."].freeze,
            ranges: ["MerchantReturnPolicySeasonalOverride"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          return_shipping_fees_amount: {
            schema_name: "returnShippingFeesAmount",
            schema_url: "https://schema.org/returnShippingFeesAmount",
            comment_lines: ["Amount of shipping costs for product returns (for any reason). Applicable when property [[returnFees]] equals [[ReturnShippingFees]]."].freeze,
            ranges: ["MonetaryAmount"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          valid_for_member_tier: {
            schema_name: "validForMemberTier",
            schema_url: "https://schema.org/validForMemberTier",
            comment_lines: ["The membership program tier(s) an Offer (or a PriceSpecification, OfferShippingDetails, or MerchantReturnPolicy under an Offer) is valid for."].freeze,
            ranges: ["MemberProgramTier"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # A property-value pair representing an additional characteristic of the entity, e.g. a product feature or another characteristic for which there is no matching property in schema.org.\n\nNote: Publishers should be aware that applications designed to use specific schema.org properties (e.g. https://schema.org/width, https://schema.org/color, https://schema.org/gtin13, ...) will typically expect such data to be provided using those properties, rather than using the generic property/value mechanism.
      def additional_property
        read_property(:additional_property)
      end

      # A property-value pair representing an additional characteristic of the entity, e.g. a product feature or another characteristic for which there is no matching property in schema.org.\n\nNote: Publishers should be aware that applications designed to use specific schema.org properties (e.g. https://schema.org/width, https://schema.org/color, https://schema.org/gtin13, ...) will typically expect such data to be provided using those properties, rather than using the generic property/value mechanism.
      def additional_property=(value)
        write_property(:additional_property, value)
      end

      # A country where a particular merchant return policy applies to, for example the two-letter ISO 3166-1 alpha-2 country code.
      def applicable_country
        read_property(:applicable_country)
      end

      # A country where a particular merchant return policy applies to, for example the two-letter ISO 3166-1 alpha-2 country code.
      def applicable_country=(value)
        write_property(:applicable_country, value)
      end

      # The type of return fees if the product is returned due to customer remorse.
      def customer_remorse_return_fees
        read_property(:customer_remorse_return_fees)
      end

      # The type of return fees if the product is returned due to customer remorse.
      def customer_remorse_return_fees=(value)
        write_property(:customer_remorse_return_fees, value)
      end

      # The method (from an enumeration) by which the customer obtains a return shipping label for a product returned due to customer remorse.
      def customer_remorse_return_label_source
        read_property(:customer_remorse_return_label_source)
      end

      # The method (from an enumeration) by which the customer obtains a return shipping label for a product returned due to customer remorse.
      def customer_remorse_return_label_source=(value)
        write_property(:customer_remorse_return_label_source, value)
      end

      # The amount of shipping costs if a product is returned due to customer remorse. Applicable when property [[customerRemorseReturnFees]] equals [[ReturnShippingFees]].
      def customer_remorse_return_shipping_fees_amount
        read_property(:customer_remorse_return_shipping_fees_amount)
      end

      # The amount of shipping costs if a product is returned due to customer remorse. Applicable when property [[customerRemorseReturnFees]] equals [[ReturnShippingFees]].
      def customer_remorse_return_shipping_fees_amount=(value)
        write_property(:customer_remorse_return_shipping_fees_amount, value)
      end

      # Are in-store returns offered? (For more advanced return methods use the [[returnMethod]] property.)
      def in_store_returns_offered
        read_property(:in_store_returns_offered)
      end

      # Are in-store returns offered? (For more advanced return methods use the [[returnMethod]] property.)
      def in_store_returns_offered=(value)
        write_property(:in_store_returns_offered, value)
      end

      # A predefined value from OfferItemCondition specifying the condition of the product or service, or the products or services included in the offer. Also used for product return policies to specify the condition of products accepted for returns.
      def item_condition
        read_property(:item_condition)
      end

      # A predefined value from OfferItemCondition specifying the condition of the product or service, or the products or services included in the offer. Also used for product return policies to specify the condition of products accepted for returns.
      def item_condition=(value)
        write_property(:item_condition, value)
      end

      # The type of return fees for returns of defect products.
      def item_defect_return_fees
        read_property(:item_defect_return_fees)
      end

      # The type of return fees for returns of defect products.
      def item_defect_return_fees=(value)
        write_property(:item_defect_return_fees, value)
      end

      # The method (from an enumeration) by which the customer obtains a return shipping label for a defect product.
      def item_defect_return_label_source
        read_property(:item_defect_return_label_source)
      end

      # The method (from an enumeration) by which the customer obtains a return shipping label for a defect product.
      def item_defect_return_label_source=(value)
        write_property(:item_defect_return_label_source, value)
      end

      # Amount of shipping costs for defect product returns. Applicable when property [[itemDefectReturnFees]] equals [[ReturnShippingFees]].
      def item_defect_return_shipping_fees_amount
        read_property(:item_defect_return_shipping_fees_amount)
      end

      # Amount of shipping costs for defect product returns. Applicable when property [[itemDefectReturnFees]] equals [[ReturnShippingFees]].
      def item_defect_return_shipping_fees_amount=(value)
        write_property(:item_defect_return_shipping_fees_amount, value)
      end

      # Specifies either a fixed return date or the number of days (from the delivery date) that a product can be returned. Used when the [[returnPolicyCategory]] property is specified as [[MerchantReturnFiniteReturnWindow]].
      # Supersedes `productReturnDays`.
      def merchant_return_days
        read_property(:merchant_return_days)
      end

      # Specifies either a fixed return date or the number of days (from the delivery date) that a product can be returned. Used when the [[returnPolicyCategory]] property is specified as [[MerchantReturnFiniteReturnWindow]].
      # Supersedes `productReturnDays`.
      def merchant_return_days=(value)
        write_property(:merchant_return_days, value)
      end

      # Specifies a Web page or service by URL, for product returns.
      # Supersedes `productReturnLink`.
      def merchant_return_link
        read_property(:merchant_return_link)
      end

      # Specifies a Web page or service by URL, for product returns.
      # Supersedes `productReturnLink`.
      def merchant_return_link=(value)
        write_property(:merchant_return_link, value)
      end

      # A refund type, from an enumerated list.
      def refund_type
        read_property(:refund_type)
      end

      # A refund type, from an enumerated list.
      def refund_type=(value)
        write_property(:refund_type, value)
      end

      # Use [[MonetaryAmount]] to specify a fixed restocking fee for product returns, or use [[Number]] to specify a percentage of the product price paid by the customer.
      def restocking_fee
        read_property(:restocking_fee)
      end

      # Use [[MonetaryAmount]] to specify a fixed restocking fee for product returns, or use [[Number]] to specify a percentage of the product price paid by the customer.
      def restocking_fee=(value)
        write_property(:restocking_fee, value)
      end

      # The type of return fees for purchased products (for any return reason).
      def return_fees
        read_property(:return_fees)
      end

      # The type of return fees for purchased products (for any return reason).
      def return_fees=(value)
        write_property(:return_fees, value)
      end

      # The method (from an enumeration) by which the customer obtains a return shipping label for a product returned for any reason.
      def return_label_source
        read_property(:return_label_source)
      end

      # The method (from an enumeration) by which the customer obtains a return shipping label for a product returned for any reason.
      def return_label_source=(value)
        write_property(:return_label_source, value)
      end

      # The type of return method offered, specified from an enumeration.
      def return_method
        read_property(:return_method)
      end

      # The type of return method offered, specified from an enumeration.
      def return_method=(value)
        write_property(:return_method, value)
      end

      # Specifies an applicable return policy (from an enumeration).
      def return_policy_category
        read_property(:return_policy_category)
      end

      # Specifies an applicable return policy (from an enumeration).
      def return_policy_category=(value)
        write_property(:return_policy_category, value)
      end

      # The country where the product has to be sent to for returns, for example "Ireland" using the [[name]] property of [[Country]]. You can also provide the two-letter [ISO 3166-1 alpha-2 country code](http://en.wikipedia.org/wiki/ISO_3166-1). Note that this can be different from the country where the product was originally shipped from or sent to.
      def return_policy_country
        read_property(:return_policy_country)
      end

      # The country where the product has to be sent to for returns, for example "Ireland" using the [[name]] property of [[Country]]. You can also provide the two-letter [ISO 3166-1 alpha-2 country code](http://en.wikipedia.org/wiki/ISO_3166-1). Note that this can be different from the country where the product was originally shipped from or sent to.
      def return_policy_country=(value)
        write_property(:return_policy_country, value)
      end

      # Seasonal override of a return policy.
      def return_policy_seasonal_override
        read_property(:return_policy_seasonal_override)
      end

      # Seasonal override of a return policy.
      def return_policy_seasonal_override=(value)
        write_property(:return_policy_seasonal_override, value)
      end

      # Amount of shipping costs for product returns (for any reason). Applicable when property [[returnFees]] equals [[ReturnShippingFees]].
      def return_shipping_fees_amount
        read_property(:return_shipping_fees_amount)
      end

      # Amount of shipping costs for product returns (for any reason). Applicable when property [[returnFees]] equals [[ReturnShippingFees]].
      def return_shipping_fees_amount=(value)
        write_property(:return_shipping_fees_amount, value)
      end

      # The membership program tier(s) an Offer (or a PriceSpecification, OfferShippingDetails, or MerchantReturnPolicy under an Offer) is valid for.
      def valid_for_member_tier
        read_property(:valid_for_member_tier)
      end

      # The membership program tier(s) an Offer (or a PriceSpecification, OfferShippingDetails, or MerchantReturnPolicy under an Offer) is valid for.
      def valid_for_member_tier=(value)
        write_property(:valid_for_member_tier, value)
      end
    end
  end
end
