module SchemaOrg
  # https://schema.org/DisagreeAction
  #
  # The act of expressing a difference of opinion with the object. An agent disagrees to/about an object (a proposition, topic or theme) with participants.
  class DisagreeAction < Base
    include Mixins::DisagreeAction
    SCHEMA_TYPES = [self, SchemaOrg::ReactAction, SchemaOrg::AssessAction, SchemaOrg::Action, SchemaOrg::Thing].freeze

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
