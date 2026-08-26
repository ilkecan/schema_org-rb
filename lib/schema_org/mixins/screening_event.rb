module SchemaOrg
  module Mixins
    module ScreeningEvent
      include Event

      def self.schema_property_definitions
        {
          :subtitle_language => {
            schema_name: "subtitleLanguage",
            ranges: ["Language", "Text"],
          }.freeze,
          :video_format => {
            schema_name: "videoFormat",
            ranges: ["Text"],
          }.freeze,
          :work_presented => {
            schema_name: "workPresented",
            ranges: ["Movie"],
          }.freeze,
        }.freeze
      end

      def subtitle_language
        read_property(:subtitle_language)
      end

      def subtitle_language=(value)
        write_property(:subtitle_language, value)
      end

      def video_format
        read_property(:video_format)
      end

      def video_format=(value)
        write_property(:video_format, value)
      end

      def work_presented
        read_property(:work_presented)
      end

      def work_presented=(value)
        write_property(:work_presented, value)
      end

    end
  end
end
