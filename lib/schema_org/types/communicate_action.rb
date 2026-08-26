module SchemaOrg
  # https://schema.org/CommunicateAction
  #
  # The act of conveying information to another person via a communication medium (instrument) such as speech, email, or telephone conversation.
  class CommunicateAction < Base
    include Mixins::CommunicateAction
    SCHEMA_TYPES = [self, SchemaOrg::InteractAction, SchemaOrg::Action, SchemaOrg::Thing].freeze

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
