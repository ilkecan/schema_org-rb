# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module VideoObject
      include MediaObject

      def self.schema_property_definitions
        {
          actor: {
            schema_name: "actor",
            schema_url: "https://schema.org/actor",
            comment_lines: ["An actor (individual or a group), e.g. in TV, radio, movie, video games etc., or in an event. Actors can be associated with individual items or with a series, episode, clip."].freeze,
            ranges: ["PerformingGroup", "Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: ["actors"].freeze
          }.freeze,
          actors: {
            schema_name: "actors",
            schema_url: "https://schema.org/actors",
            comment_lines: ["An actor, e.g. in TV, radio, movie, video games etc. Actors can be associated with individual items or with a series, episode, clip."].freeze,
            ranges: ["Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: "actor",
            supersedes: nil
          }.freeze,
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
          director: {
            schema_name: "director",
            schema_url: "https://schema.org/director",
            comment_lines: ["A director of e.g. TV, radio, movie, video gaming etc. content, or of an event. Directors can be associated with individual items or with a series, episode, clip."].freeze,
            ranges: ["Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: ["directors"].freeze
          }.freeze,
          directors: {
            schema_name: "directors",
            schema_url: "https://schema.org/directors",
            comment_lines: ["A director of e.g. TV, radio, movie, video games etc. content. Directors can be associated with individual items or with a series, episode, clip."].freeze,
            ranges: ["Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: "director",
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
          music_by: {
            schema_name: "musicBy",
            schema_url: "https://schema.org/musicBy",
            comment_lines: ["The composer of the soundtrack."].freeze,
            ranges: ["MusicGroup", "Person"].freeze,
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
          }.freeze,
          video_frame_size: {
            schema_name: "videoFrameSize",
            schema_url: "https://schema.org/videoFrameSize",
            comment_lines: ["The frame size of the video."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          video_quality: {
            schema_name: "videoQuality",
            schema_url: "https://schema.org/videoQuality",
            comment_lines: ["The quality of the video."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # An actor (individual or a group), e.g. in TV, radio, movie, video games etc., or in an event. Actors can be associated with individual items or with a series, episode, clip.
      # Supersedes `actors`.
      def actor
        read_property(:actor)
      end

      # An actor (individual or a group), e.g. in TV, radio, movie, video games etc., or in an event. Actors can be associated with individual items or with a series, episode, clip.
      # Supersedes `actors`.
      def actor=(value)
        write_property(:actor, value)
      end

      # An actor, e.g. in TV, radio, movie, video games etc. Actors can be associated with individual items or with a series, episode, clip.
      # Superseded by `actor`.
      def actors
        read_property(:actors)
      end

      # An actor, e.g. in TV, radio, movie, video games etc. Actors can be associated with individual items or with a series, episode, clip.
      # Superseded by `actor`.
      def actors=(value)
        write_property(:actors, value)
      end

      # The caption for this object. For downloadable machine formats (closed caption, subtitles etc.) use MediaObject and indicate the [[encodingFormat]].
      def caption
        read_property(:caption)
      end

      # The caption for this object. For downloadable machine formats (closed caption, subtitles etc.) use MediaObject and indicate the [[encodingFormat]].
      def caption=(value)
        write_property(:caption, value)
      end

      # A director of e.g. TV, radio, movie, video gaming etc. content, or of an event. Directors can be associated with individual items or with a series, episode, clip.
      # Supersedes `directors`.
      def director
        read_property(:director)
      end

      # A director of e.g. TV, radio, movie, video gaming etc. content, or of an event. Directors can be associated with individual items or with a series, episode, clip.
      # Supersedes `directors`.
      def director=(value)
        write_property(:director, value)
      end

      # A director of e.g. TV, radio, movie, video games etc. content. Directors can be associated with individual items or with a series, episode, clip.
      # Superseded by `director`.
      def directors
        read_property(:directors)
      end

      # A director of e.g. TV, radio, movie, video games etc. content. Directors can be associated with individual items or with a series, episode, clip.
      # Superseded by `director`.
      def directors=(value)
        write_property(:directors, value)
      end

      # Represents textual captioning from a [[MediaObject]], e.g. text of a 'meme'.
      def embedded_text_caption
        read_property(:embedded_text_caption)
      end

      # Represents textual captioning from a [[MediaObject]], e.g. text of a 'meme'.
      def embedded_text_caption=(value)
        write_property(:embedded_text_caption, value)
      end

      # The composer of the soundtrack.
      def music_by
        read_property(:music_by)
      end

      # The composer of the soundtrack.
      def music_by=(value)
        write_property(:music_by, value)
      end

      # If this MediaObject is an AudioObject or VideoObject, the transcript of that object.
      def transcript
        read_property(:transcript)
      end

      # If this MediaObject is an AudioObject or VideoObject, the transcript of that object.
      def transcript=(value)
        write_property(:transcript, value)
      end

      # The frame size of the video.
      def video_frame_size
        read_property(:video_frame_size)
      end

      # The frame size of the video.
      def video_frame_size=(value)
        write_property(:video_frame_size, value)
      end

      # The quality of the video.
      def video_quality
        read_property(:video_quality)
      end

      # The quality of the video.
      def video_quality=(value)
        write_property(:video_quality, value)
      end
    end
  end
end
