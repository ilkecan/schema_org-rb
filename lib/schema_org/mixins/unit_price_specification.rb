# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module UnitPriceSpecification
      include PriceSpecification

      def self.schema_property_definitions
        {
          billing_duration: {
            schema_name: "billingDuration",
            schema_url: "https://schema.org/billingDuration",
            comment_lines: ["Specifies for how long this price (or price component) will be billed. Can be used, for example, to model the contractual duration of a subscription or payment plan. Type can be either a Duration or a Number (in which case the unit of measurement, for example month, is specified by the unitCode property)."].freeze,
            ranges: ["Duration", "Number", "QuantitativeValue"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          billing_increment: {
            schema_name: "billingIncrement",
            schema_url: "https://schema.org/billingIncrement",
            comment_lines: ["This property specifies the minimal quantity and rounding increment that will be the basis for the billing. The unit of measurement is specified by the unitCode property."].freeze,
            ranges: ["Number"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          billing_start: {
            schema_name: "billingStart",
            schema_url: "https://schema.org/billingStart",
            comment_lines: ["Specifies after how much time this price (or price component) becomes valid and billing starts. Can be used, for example, to model a price increase after the first year of a subscription. The unit of measurement is specified by the unitCode property."].freeze,
            ranges: ["Number"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          price_component_type: {
            schema_name: "priceComponentType",
            schema_url: "https://schema.org/priceComponentType",
            comment_lines: ["Identifies a price component (for example, a line item on an invoice), part of the total price for an offer."].freeze,
            ranges: ["PriceComponentTypeEnumeration"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          price_type: {
            schema_name: "priceType",
            schema_url: "https://schema.org/priceType",
            comment_lines: ["Defines the type of a price specified for an offered product, for example a list price, a (temporary) sale price or a manufacturer suggested retail price. If multiple prices are specified for an offer the [[priceType]] property can be used to identify the type of each such specified price. The value of priceType can be specified as a value from enumeration PriceTypeEnumeration or, a UN/EDIFACT 5387 code, or as a free form text string for price types that are not already predefined in PriceTypeEnumeration."].freeze,
            ranges: ["PriceTypeEnumeration", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          reference_quantity: {
            schema_name: "referenceQuantity",
            schema_url: "https://schema.org/referenceQuantity",
            comment_lines: ["The reference quantity for which a certain price applies, e.g. 1 EUR per 4 kWh of electricity. This property is a replacement for unitOfMeasurement for the advanced cases where the price does not relate to a standard unit."].freeze,
            ranges: ["QuantitativeValue"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          unit_code: {
            schema_name: "unitCode",
            schema_url: "https://schema.org/unitCode",
            comment_lines: ["The unit of measurement given using the UN/CEFACT Common Code (3 characters) or a URL. Other codes than the UN/CEFACT Common Code may be used with a prefix followed by a colon."].freeze,
            ranges: ["Text", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          unit_text: {
            schema_name: "unitText",
            schema_url: "https://schema.org/unitText",
            comment_lines: ["A string or text indicating the unit of measurement. Useful if you cannot provide a standard unit code for", "<a href='unitCode'>unitCode</a>."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # Specifies for how long this price (or price component) will be billed. Can be used, for example, to model the contractual duration of a subscription or payment plan. Type can be either a Duration or a Number (in which case the unit of measurement, for example month, is specified by the unitCode property).
      def billing_duration
        read_property(:billing_duration)
      end

      # Specifies for how long this price (or price component) will be billed. Can be used, for example, to model the contractual duration of a subscription or payment plan. Type can be either a Duration or a Number (in which case the unit of measurement, for example month, is specified by the unitCode property).
      def billing_duration=(value)
        write_property(:billing_duration, value)
      end

      # This property specifies the minimal quantity and rounding increment that will be the basis for the billing. The unit of measurement is specified by the unitCode property.
      def billing_increment
        read_property(:billing_increment)
      end

      # This property specifies the minimal quantity and rounding increment that will be the basis for the billing. The unit of measurement is specified by the unitCode property.
      def billing_increment=(value)
        write_property(:billing_increment, value)
      end

      # Specifies after how much time this price (or price component) becomes valid and billing starts. Can be used, for example, to model a price increase after the first year of a subscription. The unit of measurement is specified by the unitCode property.
      def billing_start
        read_property(:billing_start)
      end

      # Specifies after how much time this price (or price component) becomes valid and billing starts. Can be used, for example, to model a price increase after the first year of a subscription. The unit of measurement is specified by the unitCode property.
      def billing_start=(value)
        write_property(:billing_start, value)
      end

      # Identifies a price component (for example, a line item on an invoice), part of the total price for an offer.
      def price_component_type
        read_property(:price_component_type)
      end

      # Identifies a price component (for example, a line item on an invoice), part of the total price for an offer.
      def price_component_type=(value)
        write_property(:price_component_type, value)
      end

      # Defines the type of a price specified for an offered product, for example a list price, a (temporary) sale price or a manufacturer suggested retail price. If multiple prices are specified for an offer the [[priceType]] property can be used to identify the type of each such specified price. The value of priceType can be specified as a value from enumeration PriceTypeEnumeration or, a UN/EDIFACT 5387 code, or as a free form text string for price types that are not already predefined in PriceTypeEnumeration.
      def price_type
        read_property(:price_type)
      end

      # Defines the type of a price specified for an offered product, for example a list price, a (temporary) sale price or a manufacturer suggested retail price. If multiple prices are specified for an offer the [[priceType]] property can be used to identify the type of each such specified price. The value of priceType can be specified as a value from enumeration PriceTypeEnumeration or, a UN/EDIFACT 5387 code, or as a free form text string for price types that are not already predefined in PriceTypeEnumeration.
      def price_type=(value)
        write_property(:price_type, value)
      end

      # The reference quantity for which a certain price applies, e.g. 1 EUR per 4 kWh of electricity. This property is a replacement for unitOfMeasurement for the advanced cases where the price does not relate to a standard unit.
      def reference_quantity
        read_property(:reference_quantity)
      end

      # The reference quantity for which a certain price applies, e.g. 1 EUR per 4 kWh of electricity. This property is a replacement for unitOfMeasurement for the advanced cases where the price does not relate to a standard unit.
      def reference_quantity=(value)
        write_property(:reference_quantity, value)
      end

      # The unit of measurement given using the UN/CEFACT Common Code (3 characters) or a URL. Other codes than the UN/CEFACT Common Code may be used with a prefix followed by a colon.
      def unit_code
        read_property(:unit_code)
      end

      # The unit of measurement given using the UN/CEFACT Common Code (3 characters) or a URL. Other codes than the UN/CEFACT Common Code may be used with a prefix followed by a colon.
      def unit_code=(value)
        write_property(:unit_code, value)
      end

      # A string or text indicating the unit of measurement. Useful if you cannot provide a standard unit code for
      # <a href='unitCode'>unitCode</a>.
      def unit_text
        read_property(:unit_text)
      end

      # A string or text indicating the unit of measurement. Useful if you cannot provide a standard unit code for
      # <a href='unitCode'>unitCode</a>.
      def unit_text=(value)
        write_property(:unit_text, value)
      end
    end
  end
end
