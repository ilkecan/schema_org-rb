module SchemaOrg
  # https://schema.org/RejectAction
  #
  # The act of rejecting to/adopting an object.\n\nRelated actions:\n\n* [[AcceptAction]]: The antonym of RejectAction.
  class RejectAction < Base
    include Mixins::RejectAction
    SCHEMA_TYPES = [self, SchemaOrg::AllocateAction, SchemaOrg::OrganizeAction, SchemaOrg::Action, SchemaOrg::Thing].freeze

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
