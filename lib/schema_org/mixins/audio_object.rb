# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module AudioObject
      include MediaObject

      def self.schema_property_definitions
        {
          caption: {
            schema_name: "caption",
            schema_url: "https://schema.org/caption",
            comment_lines: ["The caption for this object. For downloadable machine formats (closed caption, subtitles etc.) use MediaObject and indicate the [[encodingFormat]]."].freeze,
            ranges: ["MediaObject", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          embedded_text_caption: {
            schema_name: "embeddedTextCaption",
            schema_url: "https://schema.org/embeddedTextCaption",
            comment_lines: ["Represents textual captioning from a [[MediaObject]], e.g. text of a 'meme'."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          transcript: {
            schema_name: "transcript",
            schema_url: "https://schema.org/transcript",
            comment_lines: ["If this MediaObject is an AudioObject or VideoObject, the transcript of that object."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The caption for this object. For downloadable machine formats (closed caption, subtitles etc.) use MediaObject and indicate the [[encodingFormat]].
      def caption
        read_property(:caption)
      end

      # The caption for this object. For downloadable machine formats (closed caption, subtitles etc.) use MediaObject and indicate the [[encodingFormat]].
      def caption=(value)
        write_property(:caption, value)
      end

      # Represents textual captioning from a [[MediaObject]], e.g. text of a 'meme'.
      def embedded_text_caption
        read_property(:embedded_text_caption)
      end

      # Represents textual captioning from a [[MediaObject]], e.g. text of a 'meme'.
      def embedded_text_caption=(value)
        write_property(:embedded_text_caption, value)
      end

      # If this MediaObject is an AudioObject or VideoObject, the transcript of that object.
      def transcript
        read_property(:transcript)
      end

      # If this MediaObject is an AudioObject or VideoObject, the transcript of that object.
      def transcript=(value)
        write_property(:transcript, value)
      end
    end
  end
end
