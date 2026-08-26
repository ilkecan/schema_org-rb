# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/MusicReleaseFormatType
  #
  # Format of this release (the type of recording media used, i.e. compact disc, digital media, LP, etc.).
  class MusicReleaseFormatType < Base
    include Mixins::MusicReleaseFormatType

    SCHEMA_NAME = "MusicReleaseFormatType"
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
    CD_FORMAT = EnumerationValue.new("CDFormat", [SchemaOrg::MusicReleaseFormatType])
    CASSETTE_FORMAT = EnumerationValue.new("CassetteFormat", [SchemaOrg::MusicReleaseFormatType])
    DVD_FORMAT = EnumerationValue.new("DVDFormat", [SchemaOrg::MusicReleaseFormatType])
    DIGITAL_AUDIO_TAPE_FORMAT = EnumerationValue.new("DigitalAudioTapeFormat", [SchemaOrg::MusicReleaseFormatType])
    DIGITAL_FORMAT = EnumerationValue.new("DigitalFormat", [SchemaOrg::MusicReleaseFormatType])
    LASER_DISC_FORMAT = EnumerationValue.new("LaserDiscFormat", [SchemaOrg::MusicReleaseFormatType])
    VINYL_FORMAT = EnumerationValue.new("VinylFormat", [SchemaOrg::MusicReleaseFormatType])
    VALUES = [CD_FORMAT, CASSETTE_FORMAT, DVD_FORMAT, DIGITAL_AUDIO_TAPE_FORMAT, DIGITAL_FORMAT, LASER_DISC_FORMAT, VINYL_FORMAT].freeze

    def self.values
      VALUES
    end
  end
end
