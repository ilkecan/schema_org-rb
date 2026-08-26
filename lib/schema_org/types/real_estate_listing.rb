# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/RealEstateListing
  #
  # A [[RealEstateListing]] is a listing that describes one or more real-estate [[Offer]]s (whose [[businessFunction]] is typically to lease out, or to sell).
  #   The [[RealEstateListing]] type itself represents the overall listing, as manifested in some [[WebPage]].
  class RealEstateListing < Base
    include Mixins::RealEstateListing

    SCHEMA_NAME = "RealEstateListing"
    SCHEMA_TYPES = [self, SchemaOrg::WebPage, SchemaOrg::CreativeWork, SchemaOrg::Thing].freeze

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
