module SchemaOrg
  # https://schema.org/MusicRelease
  #
  # A MusicRelease is a specific release of a music album.
  class MusicRelease < Base
    include Mixins::MusicRelease
    SCHEMA_TYPES = [self, SchemaOrg::MusicPlaylist, SchemaOrg::CreativeWork, SchemaOrg::Thing].freeze

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
