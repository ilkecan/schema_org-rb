# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/AuthenticateAction
  #
  # The action of authenticating into a device or application.
  class AuthenticateAction < Base
    include Mixins::AuthenticateAction

    SCHEMA_NAME = "AuthenticateAction"
    SCHEMA_TYPES = [self, SchemaOrg::ControlAction, SchemaOrg::Action, SchemaOrg::Thing].freeze

    class << self
      def schema_name
        SCHEMA_NAME
      end

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
