# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module MediaReview
      include Review

      def self.schema_property_definitions
        {
          media_authenticity_category: {
            schema_name: "mediaAuthenticityCategory",
            schema_url: "https://schema.org/mediaAuthenticityCategory",
            comment_lines: ["Indicates a MediaManipulationRatingEnumeration classification of a media object (in the context of how it was published or shared)."].freeze,
            ranges: ["MediaManipulationRatingEnumeration"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          original_media_context_description: {
            schema_name: "originalMediaContextDescription",
            schema_url: "https://schema.org/originalMediaContextDescription",
            comment_lines: ["Describes, in a [[MediaReview]] when dealing with [[DecontextualizedContent]], background information that can contribute to better interpretation of the [[MediaObject]]."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          original_media_link: {
            schema_name: "originalMediaLink",
            schema_url: "https://schema.org/originalMediaLink",
            comment_lines: ["Link to the page containing an original version of the content, or directly to an online copy of the original [[MediaObject]] content, e.g. video file."].freeze,
            ranges: ["MediaObject", "URL", "WebPage"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # Indicates a MediaManipulationRatingEnumeration classification of a media object (in the context of how it was published or shared).
      def media_authenticity_category
        read_property(:media_authenticity_category)
      end

      # Indicates a MediaManipulationRatingEnumeration classification of a media object (in the context of how it was published or shared).
      def media_authenticity_category=(value)
        write_property(:media_authenticity_category, value)
      end

      # Describes, in a [[MediaReview]] when dealing with [[DecontextualizedContent]], background information that can contribute to better interpretation of the [[MediaObject]].
      def original_media_context_description
        read_property(:original_media_context_description)
      end

      # Describes, in a [[MediaReview]] when dealing with [[DecontextualizedContent]], background information that can contribute to better interpretation of the [[MediaObject]].
      def original_media_context_description=(value)
        write_property(:original_media_context_description, value)
      end

      # Link to the page containing an original version of the content, or directly to an online copy of the original [[MediaObject]] content, e.g. video file.
      def original_media_link
        read_property(:original_media_link)
      end

      # Link to the page containing an original version of the content, or directly to an online copy of the original [[MediaObject]] content, e.g. video file.
      def original_media_link=(value)
        write_property(:original_media_link, value)
      end
    end
  end
end
