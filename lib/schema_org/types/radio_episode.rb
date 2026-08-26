module SchemaOrg
  # https://schema.org/RadioEpisode
  #
  # A radio episode which can be part of a series or season.
  class RadioEpisode < Base
    include Mixins::RadioEpisode
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
