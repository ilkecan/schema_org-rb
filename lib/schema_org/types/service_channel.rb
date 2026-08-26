# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/ServiceChannel
  #
  # A means for accessing a service, e.g. a government office location, web site, or phone number.
  class ServiceChannel < Base
    include Mixins::ServiceChannel

    SCHEMA_NAME = "ServiceChannel"
    SCHEMA_TYPES = [self, SchemaOrg::Intangible, SchemaOrg::Thing].freeze

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
