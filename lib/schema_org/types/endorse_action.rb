module SchemaOrg
  # https://schema.org/EndorseAction
  #
  # An agent approves/certifies/likes/supports/sanctions an object.
  class EndorseAction < Base
    include Mixins::EndorseAction
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
