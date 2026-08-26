module SchemaOrg
  # https://schema.org/ResumeAction
  #
  # The act of resuming a device or application which was formerly paused (e.g. resume music playback or resume a timer).
  class ResumeAction < Base
    include Mixins::ResumeAction
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
