# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  # https://schema.org/IPTCDigitalSourceEnumeration
  #
  # <a href="https://www.iptc.org/">IPTC</a> "Digital Source" codes for use with the [[digitalSourceType]] property, providing information about the source for a digital media object.
  # In general these codes are not declared here to be mutually exclusive, although some combinations would be contradictory if applied simultaneously, or might be considered mutually incompatible by upstream maintainers of the definitions. See the IPTC <a href="https://www.iptc.org/std/photometadata/documentation/userguide/">documentation</a>
  #  for <a href="https://cv.iptc.org/newscodes/digitalsourcetype/">detailed definitions</a> of all terms.
  class IPTCDigitalSourceEnumeration < Base
    include Mixins::IPTCDigitalSourceEnumeration

    SCHEMA_NAME = "IPTCDigitalSourceEnumeration"
    SCHEMA_TYPES = [self, SchemaOrg::MediaEnumeration, SchemaOrg::Enumeration, SchemaOrg::Intangible, SchemaOrg::Thing].freeze

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
    ALGORITHMIC_MEDIA_DIGITAL_SOURCE = EnumerationValue.new("AlgorithmicMediaDigitalSource", [SchemaOrg::IPTCDigitalSourceEnumeration])
    ALGORITHMICALLY_ENHANCED_DIGITAL_SOURCE = EnumerationValue.new("AlgorithmicallyEnhancedDigitalSource", [SchemaOrg::IPTCDigitalSourceEnumeration])
    COMPOSITE_CAPTURE_DIGITAL_SOURCE = EnumerationValue.new("CompositeCaptureDigitalSource", [SchemaOrg::IPTCDigitalSourceEnumeration])
    COMPOSITE_DIGITAL_SOURCE = EnumerationValue.new("CompositeDigitalSource", [SchemaOrg::IPTCDigitalSourceEnumeration])
    COMPOSITE_SYNTHETIC_DIGITAL_SOURCE = EnumerationValue.new("CompositeSyntheticDigitalSource", [SchemaOrg::IPTCDigitalSourceEnumeration])
    COMPOSITE_WITH_TRAINED_ALGORITHMIC_MEDIA_DIGITAL_SOURCE = EnumerationValue.new("CompositeWithTrainedAlgorithmicMediaDigitalSource", [SchemaOrg::IPTCDigitalSourceEnumeration])
    DATA_DRIVEN_MEDIA_DIGITAL_SOURCE = EnumerationValue.new("DataDrivenMediaDigitalSource", [SchemaOrg::IPTCDigitalSourceEnumeration])
    DIGITAL_ART_DIGITAL_SOURCE = EnumerationValue.new("DigitalArtDigitalSource", [SchemaOrg::IPTCDigitalSourceEnumeration])
    DIGITAL_CAPTURE_DIGITAL_SOURCE = EnumerationValue.new("DigitalCaptureDigitalSource", [SchemaOrg::IPTCDigitalSourceEnumeration])
    MINOR_HUMAN_EDITS_DIGITAL_SOURCE = EnumerationValue.new("MinorHumanEditsDigitalSource", [SchemaOrg::IPTCDigitalSourceEnumeration])
    MULTI_FRAME_COMPUTATIONAL_CAPTURE_DIGITAL_SOURCE = EnumerationValue.new("MultiFrameComputationalCaptureDigitalSource", [SchemaOrg::IPTCDigitalSourceEnumeration])
    NEGATIVE_FILM_DIGITAL_SOURCE = EnumerationValue.new("NegativeFilmDigitalSource", [SchemaOrg::IPTCDigitalSourceEnumeration])
    POSITIVE_FILM_DIGITAL_SOURCE = EnumerationValue.new("PositiveFilmDigitalSource", [SchemaOrg::IPTCDigitalSourceEnumeration])
    PRINT_DIGITAL_SOURCE = EnumerationValue.new("PrintDigitalSource", [SchemaOrg::IPTCDigitalSourceEnumeration])
    SCREEN_CAPTURE_DIGITAL_SOURCE = EnumerationValue.new("ScreenCaptureDigitalSource", [SchemaOrg::IPTCDigitalSourceEnumeration])
    TRAINED_ALGORITHMIC_MEDIA_DIGITAL_SOURCE = EnumerationValue.new("TrainedAlgorithmicMediaDigitalSource", [SchemaOrg::IPTCDigitalSourceEnumeration])
    VIRTUAL_RECORDING_DIGITAL_SOURCE = EnumerationValue.new("VirtualRecordingDigitalSource", [SchemaOrg::IPTCDigitalSourceEnumeration])
    VALUES = [ALGORITHMIC_MEDIA_DIGITAL_SOURCE, ALGORITHMICALLY_ENHANCED_DIGITAL_SOURCE, COMPOSITE_CAPTURE_DIGITAL_SOURCE, COMPOSITE_DIGITAL_SOURCE, COMPOSITE_SYNTHETIC_DIGITAL_SOURCE, COMPOSITE_WITH_TRAINED_ALGORITHMIC_MEDIA_DIGITAL_SOURCE, DATA_DRIVEN_MEDIA_DIGITAL_SOURCE, DIGITAL_ART_DIGITAL_SOURCE, DIGITAL_CAPTURE_DIGITAL_SOURCE, MINOR_HUMAN_EDITS_DIGITAL_SOURCE, MULTI_FRAME_COMPUTATIONAL_CAPTURE_DIGITAL_SOURCE, NEGATIVE_FILM_DIGITAL_SOURCE, POSITIVE_FILM_DIGITAL_SOURCE, PRINT_DIGITAL_SOURCE, SCREEN_CAPTURE_DIGITAL_SOURCE, TRAINED_ALGORITHMIC_MEDIA_DIGITAL_SOURCE, VIRTUAL_RECORDING_DIGITAL_SOURCE].freeze

    def self.values
      VALUES
    end
  end
end
