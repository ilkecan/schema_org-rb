# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  # https://schema.org/MediaManipulationRatingEnumeration
  #
  # Codes for use with the [[mediaAuthenticityCategory]] property, indicating the authenticity of a media object (in the context of how it was published or shared). In general these codes are not mutually exclusive, although some combinations (such as 'original' versus 'transformed', 'edited' and 'staged') would be contradictory if applied in the same [[MediaReview]]. Note that the application of these codes is with regard to a piece of media shared or published in a particular context.
  class MediaManipulationRatingEnumeration < Base
    include Mixins::MediaManipulationRatingEnumeration

    SCHEMA_NAME = "MediaManipulationRatingEnumeration"
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
    DECONTEXTUALIZED_CONTENT = EnumerationValue.new("DecontextualizedContent", [SchemaOrg::MediaManipulationRatingEnumeration])
    EDITED_OR_CROPPED_CONTENT = EnumerationValue.new("EditedOrCroppedContent", [SchemaOrg::MediaManipulationRatingEnumeration])
    ORIGINAL_MEDIA_CONTENT = EnumerationValue.new("OriginalMediaContent", [SchemaOrg::MediaManipulationRatingEnumeration])
    SATIRE_OR_PARODY_CONTENT = EnumerationValue.new("SatireOrParodyContent", [SchemaOrg::MediaManipulationRatingEnumeration])
    STAGED_CONTENT = EnumerationValue.new("StagedContent", [SchemaOrg::MediaManipulationRatingEnumeration])
    TRANSFORMED_CONTENT = EnumerationValue.new("TransformedContent", [SchemaOrg::MediaManipulationRatingEnumeration])
    VALUES = [DECONTEXTUALIZED_CONTENT, EDITED_OR_CROPPED_CONTENT, ORIGINAL_MEDIA_CONTENT, SATIRE_OR_PARODY_CONTENT, STAGED_CONTENT, TRANSFORMED_CONTENT].freeze

    def self.values
      VALUES
    end
  end
end
