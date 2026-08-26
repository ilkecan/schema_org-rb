# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/RentAction
  #
  # The act of giving money in return for temporary use, but not ownership, of an object such as a vehicle or property. For example, an agent rents a property from a landlord in exchange for a periodic payment.
  class RentAction < Base
    include Mixins::RentAction

    SCHEMA_NAME = "RentAction"
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
