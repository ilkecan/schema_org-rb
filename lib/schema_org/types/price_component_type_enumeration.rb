# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  # https://schema.org/PriceComponentTypeEnumeration
  #
  # Enumerates different price components that together make up the total price for an offered product.
  class PriceComponentTypeEnumeration < Base
    include Mixins::PriceComponentTypeEnumeration

    SCHEMA_NAME = "PriceComponentTypeEnumeration"
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
    ACTIVATION_FEE = EnumerationValue.new("ActivationFee", [SchemaOrg::PriceComponentTypeEnumeration])
    CLEANING_FEE = EnumerationValue.new("CleaningFee", [SchemaOrg::PriceComponentTypeEnumeration])
    DISTANCE_FEE = EnumerationValue.new("DistanceFee", [SchemaOrg::PriceComponentTypeEnumeration])
    DOWNPAYMENT = EnumerationValue.new("Downpayment", [SchemaOrg::PriceComponentTypeEnumeration])
    INSTALLMENT = EnumerationValue.new("Installment", [SchemaOrg::PriceComponentTypeEnumeration])
    SUBSCRIPTION = EnumerationValue.new("Subscription", [SchemaOrg::PriceComponentTypeEnumeration])
    VALUES = [ACTIVATION_FEE, CLEANING_FEE, DISTANCE_FEE, DOWNPAYMENT, INSTALLMENT, SUBSCRIPTION].freeze

    def self.values
      VALUES
    end
  end
end
