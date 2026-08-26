module SchemaOrg
  # https://schema.org/ActivateAction
  #
  # The act of starting or activating a device or application (e.g. starting a timer or turning on a flashlight).
  class ActivateAction < Base
    include Mixins::ActivateAction
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
