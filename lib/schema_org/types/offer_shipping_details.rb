# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  # https://schema.org/OfferShippingDetails
  #
  # OfferShippingDetails represents information about shipping destinations.
  #
  # Multiple of these entities can be used to represent different shipping rates for different destinations:
  #
  # One entity for Alaska/Hawaii. A different one for continental US. A different one for all France.
  #
  # Multiple of these entities can be used to represent different shipping costs and delivery times.
  #
  # Two entities that are identical but differ in rate and time:
  #
  # E.g. Cheaper and slower: $5 in 5-7 days
  # or Fast and expensive: $15 in 1-2 days.
  class OfferShippingDetails < Base
    include Mixins::OfferShippingDetails

    SCHEMA_NAME = "OfferShippingDetails"
    SCHEMA_TYPES = [self, SchemaOrg::StructuredValue, SchemaOrg::Intangible, SchemaOrg::Thing].freeze

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
  end
end
