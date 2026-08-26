module SchemaOrg
  # https://schema.org/InformAction
  #
  # The act of notifying someone of information pertinent to them, with no expectation of a response.
  class InformAction < Base
    include Mixins::InformAction
    SCHEMA_TYPES = [self, SchemaOrg::CommunicateAction, SchemaOrg::InteractAction, SchemaOrg::Action, SchemaOrg::Thing].freeze

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
