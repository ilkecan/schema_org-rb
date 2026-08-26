module SchemaOrg
  # https://schema.org/AchieveAction
  #
  # The act of accomplishing something via previous efforts. It is an instantaneous action rather than an ongoing process.
  class AchieveAction < Base
    include Mixins::AchieveAction
    SCHEMA_TYPES = [self, SchemaOrg::Action, SchemaOrg::Thing].freeze

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
