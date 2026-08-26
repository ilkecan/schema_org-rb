# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module BroadcastEvent
      include PublicationEvent

      def self.schema_property_definitions
        {
          broadcast_of_event: {
            schema_name: "broadcastOfEvent",
            schema_url: "https://schema.org/broadcastOfEvent",
            comment_lines: ["The event being broadcast such as a sporting event or awards ceremony."].freeze,
            ranges: ["Event"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          is_live_broadcast: {
            schema_name: "isLiveBroadcast",
            schema_url: "https://schema.org/isLiveBroadcast",
            comment_lines: ["True if the broadcast is of a live event."].freeze,
            ranges: ["Boolean"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
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
          }.freeze
        }.freeze
      end

      # The event being broadcast such as a sporting event or awards ceremony.
      def broadcast_of_event
        read_property(:broadcast_of_event)
      end

      # The event being broadcast such as a sporting event or awards ceremony.
      def broadcast_of_event=(value)
        write_property(:broadcast_of_event, value)
      end

      # True if the broadcast is of a live event.
      def is_live_broadcast
        read_property(:is_live_broadcast)
      end

      # True if the broadcast is of a live event.
      def is_live_broadcast=(value)
        write_property(:is_live_broadcast, value)
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
    end
  end
end
