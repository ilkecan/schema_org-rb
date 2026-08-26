module SchemaOrg
  # https://schema.org/MusicAlbumProductionType
  #
  # Classification of the album by its type of content: soundtrack, live album, studio album, etc.
  class MusicAlbumProductionType < Base
    include Mixins::MusicAlbumProductionType
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
    COMPILATION_ALBUM = EnumerationValue.new("CompilationAlbum", self, [SchemaOrg::MusicAlbumProductionType]).freeze
    DJ_MIX_ALBUM = EnumerationValue.new("DJMixAlbum", self, [SchemaOrg::MusicAlbumProductionType]).freeze
    DEMO_ALBUM = EnumerationValue.new("DemoAlbum", self, [SchemaOrg::MusicAlbumProductionType]).freeze
    LIVE_ALBUM = EnumerationValue.new("LiveAlbum", self, [SchemaOrg::MusicAlbumProductionType]).freeze
    MIXTAPE_ALBUM = EnumerationValue.new("MixtapeAlbum", self, [SchemaOrg::MusicAlbumProductionType]).freeze
    REMIX_ALBUM = EnumerationValue.new("RemixAlbum", self, [SchemaOrg::MusicAlbumProductionType]).freeze
    SOUNDTRACK_ALBUM = EnumerationValue.new("SoundtrackAlbum", self, [SchemaOrg::MusicAlbumProductionType]).freeze
    SPOKEN_WORD_ALBUM = EnumerationValue.new("SpokenWordAlbum", self, [SchemaOrg::MusicAlbumProductionType]).freeze
    STUDIO_ALBUM = EnumerationValue.new("StudioAlbum", self, [SchemaOrg::MusicAlbumProductionType]).freeze
    VALUES = [COMPILATION_ALBUM, DJ_MIX_ALBUM, DEMO_ALBUM, LIVE_ALBUM, MIXTAPE_ALBUM, REMIX_ALBUM, SOUNDTRACK_ALBUM, SPOKEN_WORD_ALBUM, STUDIO_ALBUM].freeze

    def self.values
      VALUES
    end
  end
end
