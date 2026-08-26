# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/QuoteAction
  #
  # An agent quotes/estimates/appraises an object/product/service with a price at a location/store.
  class QuoteAction < Base
    include Mixins::QuoteAction

    SCHEMA_NAME = "QuoteAction"
    SCHEMA_TYPES = [self, SchemaOrg::TradeAction, SchemaOrg::Action, SchemaOrg::Thing].freeze

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
