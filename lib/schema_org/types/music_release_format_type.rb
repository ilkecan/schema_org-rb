module SchemaOrg
  # https://schema.org/MusicReleaseFormatType
  #
  # Format of this release (the type of recording media used, i.e. compact disc, digital media, LP, etc.).
  class MusicReleaseFormatType < Base
    include Mixins::MusicReleaseFormatType
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
    CD_FORMAT = EnumerationValue.new("CDFormat", self, [SchemaOrg::MusicReleaseFormatType]).freeze
    CASSETTE_FORMAT = EnumerationValue.new("CassetteFormat", self, [SchemaOrg::MusicReleaseFormatType]).freeze
    DVD_FORMAT = EnumerationValue.new("DVDFormat", self, [SchemaOrg::MusicReleaseFormatType]).freeze
    DIGITAL_AUDIO_TAPE_FORMAT = EnumerationValue.new("DigitalAudioTapeFormat", self, [SchemaOrg::MusicReleaseFormatType]).freeze
    DIGITAL_FORMAT = EnumerationValue.new("DigitalFormat", self, [SchemaOrg::MusicReleaseFormatType]).freeze
    LASER_DISC_FORMAT = EnumerationValue.new("LaserDiscFormat", self, [SchemaOrg::MusicReleaseFormatType]).freeze
    VINYL_FORMAT = EnumerationValue.new("VinylFormat", self, [SchemaOrg::MusicReleaseFormatType]).freeze
    VALUES = [CD_FORMAT, CASSETTE_FORMAT, DVD_FORMAT, DIGITAL_AUDIO_TAPE_FORMAT, DIGITAL_FORMAT, LASER_DISC_FORMAT, VINYL_FORMAT].freeze

    def self.values
      VALUES
    end
  end
end
