# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/PreOrderAction
  #
  # An agent orders a (not yet released) object/product/service to be delivered/sent.
  class PreOrderAction < Base
    include Mixins::PreOrderAction

    SCHEMA_NAME = "PreOrderAction"
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
