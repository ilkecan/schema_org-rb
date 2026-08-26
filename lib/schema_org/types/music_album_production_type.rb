# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/MusicAlbumProductionType
  #
  # Classification of the album by its type of content: soundtrack, live album, studio album, etc.
  class MusicAlbumProductionType < Base
    include Mixins::MusicAlbumProductionType

    SCHEMA_NAME = "MusicAlbumProductionType"
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
    COMPILATION_ALBUM = EnumerationValue.new("CompilationAlbum", [SchemaOrg::MusicAlbumProductionType])
    DJ_MIX_ALBUM = EnumerationValue.new("DJMixAlbum", [SchemaOrg::MusicAlbumProductionType])
    DEMO_ALBUM = EnumerationValue.new("DemoAlbum", [SchemaOrg::MusicAlbumProductionType])
    LIVE_ALBUM = EnumerationValue.new("LiveAlbum", [SchemaOrg::MusicAlbumProductionType])
    MIXTAPE_ALBUM = EnumerationValue.new("MixtapeAlbum", [SchemaOrg::MusicAlbumProductionType])
    REMIX_ALBUM = EnumerationValue.new("RemixAlbum", [SchemaOrg::MusicAlbumProductionType])
    SOUNDTRACK_ALBUM = EnumerationValue.new("SoundtrackAlbum", [SchemaOrg::MusicAlbumProductionType])
    SPOKEN_WORD_ALBUM = EnumerationValue.new("SpokenWordAlbum", [SchemaOrg::MusicAlbumProductionType])
    STUDIO_ALBUM = EnumerationValue.new("StudioAlbum", [SchemaOrg::MusicAlbumProductionType])
    VALUES = [COMPILATION_ALBUM, DJ_MIX_ALBUM, DEMO_ALBUM, LIVE_ALBUM, MIXTAPE_ALBUM, REMIX_ALBUM, SOUNDTRACK_ALBUM, SPOKEN_WORD_ALBUM, STUDIO_ALBUM].freeze

    def self.values
      VALUES
    end
  end
end
