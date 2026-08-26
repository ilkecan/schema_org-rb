module SchemaOrg
  # https://schema.org/MusicAlbumReleaseType
  #
  # The kind of release which this album is: single, EP or album.
  class MusicAlbumReleaseType < Base
    include Mixins::MusicAlbumReleaseType
    SCHEMA_TYPES = [self, SchemaOrg::Enumeration, SchemaOrg::Intangible, SchemaOrg::Thing].freeze

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
    ALBUM_RELEASE = EnumerationValue.new("AlbumRelease", self, [SchemaOrg::MusicAlbumReleaseType]).freeze
    BROADCAST_RELEASE = EnumerationValue.new("BroadcastRelease", self, [SchemaOrg::MusicAlbumReleaseType]).freeze
    EP_RELEASE = EnumerationValue.new("EPRelease", self, [SchemaOrg::MusicAlbumReleaseType]).freeze
    SINGLE_RELEASE = EnumerationValue.new("SingleRelease", self, [SchemaOrg::MusicAlbumReleaseType]).freeze
    VALUES = [ALBUM_RELEASE, BROADCAST_RELEASE, EP_RELEASE, SINGLE_RELEASE].freeze

    def self.values
      VALUES
    end
  end
end
