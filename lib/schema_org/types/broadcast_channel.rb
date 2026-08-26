module SchemaOrg
  # https://schema.org/BroadcastChannel
  #
  # A unique instance of a BroadcastService on a CableOrSatelliteService lineup.
  class BroadcastChannel < Base
    include Mixins::BroadcastChannel
    SCHEMA_TYPES = [self, SchemaOrg::Intangible, SchemaOrg::Thing].freeze

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
