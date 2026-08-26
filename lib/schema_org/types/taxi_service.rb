# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/TaxiService
  #
  # NOTE: Supersedes `Taxi`.
  #
  # A service for a vehicle for hire with a driver for local travel. Fares are usually calculated based on distance traveled.
  class TaxiService < Base
    include Mixins::TaxiService

    SCHEMA_NAME = "TaxiService"
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
