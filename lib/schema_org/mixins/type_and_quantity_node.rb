# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module TypeAndQuantityNode
      include StructuredValue

      def self.schema_property_definitions
        {
          amount_of_this_good: {
            schema_name: "amountOfThisGood",
            schema_url: "https://schema.org/amountOfThisGood",
            comment_lines: ["The quantity of the goods included in the offer."].freeze,
            ranges: ["Number"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          business_function: {
            schema_name: "businessFunction",
            schema_url: "https://schema.org/businessFunction",
            comment_lines: ["The business function (e.g. sell, lease, repair, dispose) of the offer or component of a bundle (TypeAndQuantityNode). The default is http://purl.org/goodrelations/v1#Sell."].freeze,
            ranges: ["BusinessFunction"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          type_of_good: {
            schema_name: "typeOfGood",
            schema_url: "https://schema.org/typeOfGood",
            comment_lines: ["The product that this structured value is referring to."].freeze,
            ranges: ["Product", "Service"].freeze,
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

      # The quantity of the goods included in the offer.
      def amount_of_this_good
        read_property(:amount_of_this_good)
      end

      # The quantity of the goods included in the offer.
      def amount_of_this_good=(value)
        write_property(:amount_of_this_good, value)
      end

      # The business function (e.g. sell, lease, repair, dispose) of the offer or component of a bundle (TypeAndQuantityNode). The default is http://purl.org/goodrelations/v1#Sell.
      def business_function
        read_property(:business_function)
      end

      # The business function (e.g. sell, lease, repair, dispose) of the offer or component of a bundle (TypeAndQuantityNode). The default is http://purl.org/goodrelations/v1#Sell.
      def business_function=(value)
        write_property(:business_function, value)
      end

      # The product that this structured value is referring to.
      def type_of_good
        read_property(:type_of_good)
      end

      # The product that this structured value is referring to.
      def type_of_good=(value)
        write_property(:type_of_good, value)
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
