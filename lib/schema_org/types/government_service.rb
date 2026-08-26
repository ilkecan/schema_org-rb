# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/GovernmentService
  #
  # A service provided by a government organization, e.g. food stamps, veterans benefits, etc.
  class GovernmentService < Base
    include Mixins::GovernmentService

    SCHEMA_NAME = "GovernmentService"
    SCHEMA_TYPES = [self, SchemaOrg::Service, SchemaOrg::Intangible, SchemaOrg::Thing].freeze

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
