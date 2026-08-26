# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module ScreeningEvent
      include Event

      def self.schema_property_definitions
        {
          subtitle_language: {
            schema_name: "subtitleLanguage",
            schema_url: "https://schema.org/subtitleLanguage",
            comment_lines: ["Languages in which subtitles/captions are available, in [IETF BCP 47 standard format](http://tools.ietf.org/html/bcp47)."].freeze,
            ranges: ["Language", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          video_format: {
            schema_name: "videoFormat",
            schema_url: "https://schema.org/videoFormat",
            comment_lines: ["The type of screening or video broadcast used (e.g. IMAX, 3D, SD, HD, etc.)."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          work_presented: {
            schema_name: "workPresented",
            schema_url: "https://schema.org/workPresented",
            comment_lines: ["The movie presented during this event."].freeze,
            ranges: ["Movie"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # Languages in which subtitles/captions are available, in [IETF BCP 47 standard format](http://tools.ietf.org/html/bcp47).
      def subtitle_language
        read_property(:subtitle_language)
      end

      # Languages in which subtitles/captions are available, in [IETF BCP 47 standard format](http://tools.ietf.org/html/bcp47).
      def subtitle_language=(value)
        write_property(:subtitle_language, value)
      end

      # The type of screening or video broadcast used (e.g. IMAX, 3D, SD, HD, etc.).
      def video_format
        read_property(:video_format)
      end

      # The type of screening or video broadcast used (e.g. IMAX, 3D, SD, HD, etc.).
      def video_format=(value)
        write_property(:video_format, value)
      end

      # The movie presented during this event.
      def work_presented
        read_property(:work_presented)
      end

      # The movie presented during this event.
      def work_presented=(value)
        write_property(:work_presented, value)
      end
    end
  end
end
