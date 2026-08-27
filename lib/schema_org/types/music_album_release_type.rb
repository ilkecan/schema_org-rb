# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  # https://schema.org/MusicAlbumReleaseType
  #
  # The kind of release which this album is: single, EP or album.
  class MusicAlbumReleaseType < Base
    include Mixins::MusicAlbumReleaseType

    SCHEMA_NAME = "MusicAlbumReleaseType"
    SCHEMA_TYPES = [self, SchemaOrg::Enumeration, SchemaOrg::Intangible, SchemaOrg::Thing].freeze

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
    ALBUM_RELEASE = EnumerationValue.new("AlbumRelease", [SchemaOrg::MusicAlbumReleaseType])
    BROADCAST_RELEASE = EnumerationValue.new("BroadcastRelease", [SchemaOrg::MusicAlbumReleaseType])
    EP_RELEASE = EnumerationValue.new("EPRelease", [SchemaOrg::MusicAlbumReleaseType])
    SINGLE_RELEASE = EnumerationValue.new("SingleRelease", [SchemaOrg::MusicAlbumReleaseType])
    VALUES = [ALBUM_RELEASE, BROADCAST_RELEASE, EP_RELEASE, SINGLE_RELEASE].freeze

    def self.values
      VALUES
    end
  end
end
