module SchemaOrg
  # https://schema.org/DonateAction
  #
  # The act of providing goods, services, or money without compensation, often for philanthropic reasons.
  class DonateAction < Base
    include Mixins::DonateAction
    SCHEMA_TYPES = [self, SchemaOrg::TransferAction, SchemaOrg::Action, SchemaOrg::Thing].freeze

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
