module SchemaOrg
  # https://schema.org/TVSeason
  #
  # Season dedicated to TV broadcast and associated online delivery.
  class TVSeason < Base
    include Mixins::TVSeason
    SCHEMA_TYPES = [self, SchemaOrg::CreativeWork, SchemaOrg::CreativeWorkSeason, SchemaOrg::Thing].freeze

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
