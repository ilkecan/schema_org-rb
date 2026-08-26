# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/RadioChannel
  #
  # A unique instance of a radio BroadcastService on a CableOrSatelliteService lineup.
  class RadioChannel < Base
    include Mixins::RadioChannel

    SCHEMA_NAME = "RadioChannel"
    SCHEMA_TYPES = [self, SchemaOrg::BroadcastChannel, SchemaOrg::Intangible, SchemaOrg::Thing].freeze

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
