module SchemaOrg
  # https://schema.org/WinAction
  #
  # The act of achieving victory in a competitive activity.
  class WinAction < Base
    include Mixins::WinAction
    SCHEMA_TYPES = [self, SchemaOrg::AchieveAction, SchemaOrg::Action, SchemaOrg::Thing].freeze

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
