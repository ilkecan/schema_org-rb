module SchemaOrg
  # https://schema.org/SuspendAction
  #
  # The act of momentarily pausing a device or application (e.g. pause music playback or pause a timer).
  class SuspendAction < Base
    include Mixins::SuspendAction
    SCHEMA_TYPES = [self, SchemaOrg::ControlAction, SchemaOrg::Action, SchemaOrg::Thing].freeze

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
