module SchemaOrg
  module Mixins
    module HowToDirection
      include CreativeWork
      include ListItem

      def self.schema_property_definitions
        {
          :after_media => {
            schema_name: "afterMedia",
            ranges: ["MediaObject", "URL"],
          }.freeze,
          :before_media => {
            schema_name: "beforeMedia",
            ranges: ["MediaObject", "URL"],
          }.freeze,
          :during_media => {
            schema_name: "duringMedia",
            ranges: ["MediaObject", "URL"],
          }.freeze,
          :perform_time => {
            schema_name: "performTime",
            ranges: ["Duration"],
          }.freeze,
          :prep_time => {
            schema_name: "prepTime",
            ranges: ["Duration"],
          }.freeze,
          :supply => {
            schema_name: "supply",
            ranges: ["HowToSupply", "Text"],
          }.freeze,
          :tool => {
            schema_name: "tool",
            ranges: ["HowToTool", "Text"],
          }.freeze,
          :total_time => {
            schema_name: "totalTime",
            ranges: ["Duration"],
          }.freeze,
        }.freeze
      end

      def after_media
        read_property(:after_media)
      end

      def after_media=(value)
        write_property(:after_media, value)
      end

      def before_media
        read_property(:before_media)
      end

      def before_media=(value)
        write_property(:before_media, value)
      end

      def during_media
        read_property(:during_media)
      end

      def during_media=(value)
        write_property(:during_media, value)
      end

      def perform_time
        read_property(:perform_time)
      end

      def perform_time=(value)
        write_property(:perform_time, value)
      end

      def prep_time
        read_property(:prep_time)
      end

      def prep_time=(value)
        write_property(:prep_time, value)
      end

      def supply
        read_property(:supply)
      end

      def supply=(value)
        write_property(:supply, value)
      end

      def tool
        read_property(:tool)
      end

      def tool=(value)
        write_property(:tool, value)
      end

      def total_time
        read_property(:total_time)
      end

      def total_time=(value)
        write_property(:total_time, value)
      end

    end
  end
end
