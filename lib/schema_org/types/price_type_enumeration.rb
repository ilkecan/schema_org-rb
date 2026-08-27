# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  # https://schema.org/PriceTypeEnumeration
  #
  # Enumerates different price types, for example list price, invoice price, and sale price.
  class PriceTypeEnumeration < Base
    include Mixins::PriceTypeEnumeration

    SCHEMA_NAME = "PriceTypeEnumeration"
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
    INVOICE_PRICE = EnumerationValue.new("InvoicePrice", [SchemaOrg::PriceTypeEnumeration])
    LIST_PRICE = EnumerationValue.new("ListPrice", [SchemaOrg::PriceTypeEnumeration])
    MSRP = EnumerationValue.new("MSRP", [SchemaOrg::PriceTypeEnumeration])
    MINIMUM_ADVERTISED_PRICE = EnumerationValue.new("MinimumAdvertisedPrice", [SchemaOrg::PriceTypeEnumeration])
    REGULAR_PRICE = EnumerationValue.new("RegularPrice", [SchemaOrg::PriceTypeEnumeration])
    SRP = EnumerationValue.new("SRP", [SchemaOrg::PriceTypeEnumeration])
    SALE_PRICE = EnumerationValue.new("SalePrice", [SchemaOrg::PriceTypeEnumeration])
    STRIKETHROUGH_PRICE = EnumerationValue.new("StrikethroughPrice", [SchemaOrg::PriceTypeEnumeration])
    VALUES = [INVOICE_PRICE, LIST_PRICE, MSRP, MINIMUM_ADVERTISED_PRICE, REGULAR_PRICE, SRP, SALE_PRICE, STRIKETHROUGH_PRICE].freeze

    def self.values
      VALUES
    end
  end
end
