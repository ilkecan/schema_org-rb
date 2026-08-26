module SchemaOrg
  # https://schema.org/OrderAction
  #
  # An agent orders an object/product/service to be delivered/sent.
  class OrderAction < Base
    include Mixins::OrderAction
    SCHEMA_TYPES = [self, SchemaOrg::TradeAction, SchemaOrg::Action, SchemaOrg::Thing].freeze

    class << self
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
