# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module ImageObject
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
          exif_data: {
            schema_name: "exifData",
            schema_url: "https://schema.org/exifData",
            comment_lines: ["exif data for this object."].freeze,
            ranges: ["PropertyValue", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          representative_of_page: {
            schema_name: "representativeOfPage",
            schema_url: "https://schema.org/representativeOfPage",
            comment_lines: ["Indicates whether this image is representative of the content of the page."].freeze,
            ranges: ["Boolean"].freeze,
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

      # exif data for this object.
      def exif_data
        read_property(:exif_data)
      end

      # exif data for this object.
      def exif_data=(value)
        write_property(:exif_data, value)
      end

      # Indicates whether this image is representative of the content of the page.
      def representative_of_page
        read_property(:representative_of_page)
      end

      # Indicates whether this image is representative of the content of the page.
      def representative_of_page=(value)
        write_property(:representative_of_page, value)
      end
    end
  end
end
