module SchemaOrg
  # https://schema.org/TVEpisode
  #
  # A TV episode which can be part of a series or season.
  class TVEpisode < Base
    include Mixins::TVEpisode
    SCHEMA_TYPES = [self, SchemaOrg::Episode, SchemaOrg::CreativeWork, SchemaOrg::Thing].freeze

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
