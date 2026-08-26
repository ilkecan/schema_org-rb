# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/TradeAction
  #
  # The act of participating in an exchange of goods and services for monetary compensation. An agent trades an object, product or service with a participant in exchange for a one time or periodic payment.
  class TradeAction < Base
    include Mixins::TradeAction

    SCHEMA_NAME = "TradeAction"
    SCHEMA_TYPES = [self, SchemaOrg::Action, SchemaOrg::Thing].freeze

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
