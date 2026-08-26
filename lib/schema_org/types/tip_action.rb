module SchemaOrg
  # https://schema.org/TipAction
  #
  # The act of giving money voluntarily to a beneficiary in recognition of services rendered.
  class TipAction < Base
    include Mixins::TipAction
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
