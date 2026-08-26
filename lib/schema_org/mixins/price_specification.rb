# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module PriceSpecification
      include StructuredValue

      def self.schema_property_definitions
        {
          eligible_quantity: {
            schema_name: "eligibleQuantity",
            schema_url: "https://schema.org/eligibleQuantity",
            comment_lines: ["The interval and unit of measurement of ordering quantities for which the offer or price specification is valid. This allows e.g. specifying that a certain freight charge is valid only for a certain quantity."].freeze,
            ranges: ["QuantitativeValue"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          eligible_transaction_volume: {
            schema_name: "eligibleTransactionVolume",
            schema_url: "https://schema.org/eligibleTransactionVolume",
            comment_lines: ["The transaction volume, in a monetary unit, for which the offer or price specification is valid, e.g. for indicating a minimal purchasing volume, to express free shipping above a certain order volume, or to limit the acceptance of credit cards to purchases to a certain minimal amount."].freeze,
            ranges: ["PriceSpecification"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          max_price: {
            schema_name: "maxPrice",
            schema_url: "https://schema.org/maxPrice",
            comment_lines: ["The highest price if the price is a range."].freeze,
            ranges: ["Number"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          membership_points_earned: {
            schema_name: "membershipPointsEarned",
            schema_url: "https://schema.org/membershipPointsEarned",
            comment_lines: ["The number of membership points earned by the member. If necessary, the unitText can be used to express the units the points are issued in. (E.g. stars, miles, etc.)"].freeze,
            ranges: ["Number", "QuantitativeValue"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          min_price: {
            schema_name: "minPrice",
            schema_url: "https://schema.org/minPrice",
            comment_lines: ["The lowest price if the price is a range."].freeze,
            ranges: ["Number"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          price: {
            schema_name: "price",
            schema_url: "https://schema.org/price",
            comment_lines: ["The offer price of a product, or of a price component when attached to PriceSpecification and its subtypes.\\n\\nUsage guidelines:\\n\\n* Use the [[priceCurrency]] property (with standard formats: [ISO 4217 currency format](http://en.wikipedia.org/wiki/ISO_4217), e.g. \"USD\"; [Ticker symbol](https://en.wikipedia.org/wiki/List_of_cryptocurrencies) for cryptocurrencies, e.g. \"BTC\"; well known names for [Local Exchange Trading Systems](https://en.wikipedia.org/wiki/Local_exchange_trading_system) (LETS) and other currency types, e.g. \"Ithaca HOUR\") instead of including [ambiguous symbols](http://en.wikipedia.org/wiki/Dollar_sign#Currencies_that_use_the_dollar_or_peso_sign) such as '$' in the value.\\n* Use '.' (Unicode 'FULL STOP' (U+002E)) rather than ',' to indicate a decimal point. Avoid using these symbols as a readability separator.\\n* Note that both [RDFa](http://www.w3.org/TR/xhtml-rdfa-primer/#using-the-content-attribute) and Microdata syntax allow the use of a \"content=\" attribute for publishing simple machine-readable values alongside more human-friendly formatting.\\n* Use values from 0123456789 (Unicode 'DIGIT ZERO' (U+0030) to 'DIGIT NINE' (U+0039)) rather than superficially similar Unicode symbols."].freeze,
            ranges: ["Number", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          price_currency: {
            schema_name: "priceCurrency",
            schema_url: "https://schema.org/priceCurrency",
            comment_lines: ["The currency of the price, or a price component when attached to [[PriceSpecification]] and its subtypes.\\n\\nUse standard formats: [ISO 4217 currency format](http://en.wikipedia.org/wiki/ISO_4217), e.g. \"USD\"; [Ticker symbol](https://en.wikipedia.org/wiki/List_of_cryptocurrencies) for cryptocurrencies, e.g. \"BTC\"; well known names for [Local Exchange Trading Systems](https://en.wikipedia.org/wiki/Local_exchange_trading_system) (LETS) and other currency types, e.g. \"Ithaca HOUR\"."].freeze,
            ranges: ["Text"].freeze,
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
          }.freeze,
          valid_from: {
            schema_name: "validFrom",
            schema_url: "https://schema.org/validFrom",
            comment_lines: ["The date when the item becomes valid."].freeze,
            ranges: ["Date", "DateTime"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          valid_through: {
            schema_name: "validThrough",
            schema_url: "https://schema.org/validThrough",
            comment_lines: ["The date after when the item is not valid. For example the end of an offer, salary period, or a period of opening hours."].freeze,
            ranges: ["Date", "DateTime"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          value_added_tax_included: {
            schema_name: "valueAddedTaxIncluded",
            schema_url: "https://schema.org/valueAddedTaxIncluded",
            comment_lines: ["Specifies whether the applicable value-added tax (VAT) is included in the price specification or not."].freeze,
            ranges: ["Boolean"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The interval and unit of measurement of ordering quantities for which the offer or price specification is valid. This allows e.g. specifying that a certain freight charge is valid only for a certain quantity.
      def eligible_quantity
        read_property(:eligible_quantity)
      end

      # The interval and unit of measurement of ordering quantities for which the offer or price specification is valid. This allows e.g. specifying that a certain freight charge is valid only for a certain quantity.
      def eligible_quantity=(value)
        write_property(:eligible_quantity, value)
      end

      # The transaction volume, in a monetary unit, for which the offer or price specification is valid, e.g. for indicating a minimal purchasing volume, to express free shipping above a certain order volume, or to limit the acceptance of credit cards to purchases to a certain minimal amount.
      def eligible_transaction_volume
        read_property(:eligible_transaction_volume)
      end

      # The transaction volume, in a monetary unit, for which the offer or price specification is valid, e.g. for indicating a minimal purchasing volume, to express free shipping above a certain order volume, or to limit the acceptance of credit cards to purchases to a certain minimal amount.
      def eligible_transaction_volume=(value)
        write_property(:eligible_transaction_volume, value)
      end

      # The highest price if the price is a range.
      def max_price
        read_property(:max_price)
      end

      # The highest price if the price is a range.
      def max_price=(value)
        write_property(:max_price, value)
      end

      # The number of membership points earned by the member. If necessary, the unitText can be used to express the units the points are issued in. (E.g. stars, miles, etc.)
      def membership_points_earned
        read_property(:membership_points_earned)
      end

      # The number of membership points earned by the member. If necessary, the unitText can be used to express the units the points are issued in. (E.g. stars, miles, etc.)
      def membership_points_earned=(value)
        write_property(:membership_points_earned, value)
      end

      # The lowest price if the price is a range.
      def min_price
        read_property(:min_price)
      end

      # The lowest price if the price is a range.
      def min_price=(value)
        write_property(:min_price, value)
      end

      # The offer price of a product, or of a price component when attached to PriceSpecification and its subtypes.\n\nUsage guidelines:\n\n* Use the [[priceCurrency]] property (with standard formats: [ISO 4217 currency format](http://en.wikipedia.org/wiki/ISO_4217), e.g. "USD"; [Ticker symbol](https://en.wikipedia.org/wiki/List_of_cryptocurrencies) for cryptocurrencies, e.g. "BTC"; well known names for [Local Exchange Trading Systems](https://en.wikipedia.org/wiki/Local_exchange_trading_system) (LETS) and other currency types, e.g. "Ithaca HOUR") instead of including [ambiguous symbols](http://en.wikipedia.org/wiki/Dollar_sign#Currencies_that_use_the_dollar_or_peso_sign) such as '$' in the value.\n* Use '.' (Unicode 'FULL STOP' (U+002E)) rather than ',' to indicate a decimal point. Avoid using these symbols as a readability separator.\n* Note that both [RDFa](http://www.w3.org/TR/xhtml-rdfa-primer/#using-the-content-attribute) and Microdata syntax allow the use of a "content=" attribute for publishing simple machine-readable values alongside more human-friendly formatting.\n* Use values from 0123456789 (Unicode 'DIGIT ZERO' (U+0030) to 'DIGIT NINE' (U+0039)) rather than superficially similar Unicode symbols.
      def price
        read_property(:price)
      end

      # The offer price of a product, or of a price component when attached to PriceSpecification and its subtypes.\n\nUsage guidelines:\n\n* Use the [[priceCurrency]] property (with standard formats: [ISO 4217 currency format](http://en.wikipedia.org/wiki/ISO_4217), e.g. "USD"; [Ticker symbol](https://en.wikipedia.org/wiki/List_of_cryptocurrencies) for cryptocurrencies, e.g. "BTC"; well known names for [Local Exchange Trading Systems](https://en.wikipedia.org/wiki/Local_exchange_trading_system) (LETS) and other currency types, e.g. "Ithaca HOUR") instead of including [ambiguous symbols](http://en.wikipedia.org/wiki/Dollar_sign#Currencies_that_use_the_dollar_or_peso_sign) such as '$' in the value.\n* Use '.' (Unicode 'FULL STOP' (U+002E)) rather than ',' to indicate a decimal point. Avoid using these symbols as a readability separator.\n* Note that both [RDFa](http://www.w3.org/TR/xhtml-rdfa-primer/#using-the-content-attribute) and Microdata syntax allow the use of a "content=" attribute for publishing simple machine-readable values alongside more human-friendly formatting.\n* Use values from 0123456789 (Unicode 'DIGIT ZERO' (U+0030) to 'DIGIT NINE' (U+0039)) rather than superficially similar Unicode symbols.
      def price=(value)
        write_property(:price, value)
      end

      # The currency of the price, or a price component when attached to [[PriceSpecification]] and its subtypes.\n\nUse standard formats: [ISO 4217 currency format](http://en.wikipedia.org/wiki/ISO_4217), e.g. "USD"; [Ticker symbol](https://en.wikipedia.org/wiki/List_of_cryptocurrencies) for cryptocurrencies, e.g. "BTC"; well known names for [Local Exchange Trading Systems](https://en.wikipedia.org/wiki/Local_exchange_trading_system) (LETS) and other currency types, e.g. "Ithaca HOUR".
      def price_currency
        read_property(:price_currency)
      end

      # The currency of the price, or a price component when attached to [[PriceSpecification]] and its subtypes.\n\nUse standard formats: [ISO 4217 currency format](http://en.wikipedia.org/wiki/ISO_4217), e.g. "USD"; [Ticker symbol](https://en.wikipedia.org/wiki/List_of_cryptocurrencies) for cryptocurrencies, e.g. "BTC"; well known names for [Local Exchange Trading Systems](https://en.wikipedia.org/wiki/Local_exchange_trading_system) (LETS) and other currency types, e.g. "Ithaca HOUR".
      def price_currency=(value)
        write_property(:price_currency, value)
      end

      # The membership program tier(s) an Offer (or a PriceSpecification, OfferShippingDetails, or MerchantReturnPolicy under an Offer) is valid for.
      def valid_for_member_tier
        read_property(:valid_for_member_tier)
      end

      # The membership program tier(s) an Offer (or a PriceSpecification, OfferShippingDetails, or MerchantReturnPolicy under an Offer) is valid for.
      def valid_for_member_tier=(value)
        write_property(:valid_for_member_tier, value)
      end

      # The date when the item becomes valid.
      def valid_from
        read_property(:valid_from)
      end

      # The date when the item becomes valid.
      def valid_from=(value)
        write_property(:valid_from, value)
      end

      # The date after when the item is not valid. For example the end of an offer, salary period, or a period of opening hours.
      def valid_through
        read_property(:valid_through)
      end

      # The date after when the item is not valid. For example the end of an offer, salary period, or a period of opening hours.
      def valid_through=(value)
        write_property(:valid_through, value)
      end

      # Specifies whether the applicable value-added tax (VAT) is included in the price specification or not.
      def value_added_tax_included
        read_property(:value_added_tax_included)
      end

      # Specifies whether the applicable value-added tax (VAT) is included in the price specification or not.
      def value_added_tax_included=(value)
        write_property(:value_added_tax_included, value)
      end
    end
  end
end
