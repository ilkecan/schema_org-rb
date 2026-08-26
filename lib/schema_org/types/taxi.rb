# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/Taxi
  #
  # NOTE: Superseded by `TaxiService`.
  #
  # A taxi.
  class Taxi < Base
    include Mixins::Taxi

    SCHEMA_NAME = "Taxi"
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
