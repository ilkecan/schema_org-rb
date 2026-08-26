# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/SellAction
  #
  # The act of taking money from a buyer in exchange for goods or services rendered. An agent sells an object, product, or service to a buyer for a price. Reciprocal of BuyAction.
  class SellAction < Base
    include Mixins::SellAction

    SCHEMA_NAME = "SellAction"
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
