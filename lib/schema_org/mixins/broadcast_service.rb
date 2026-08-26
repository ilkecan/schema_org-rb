module SchemaOrg
  module Mixins
    module BroadcastService
      include Service

      def self.schema_property_definitions
        {
          :area => {
            schema_name: "area",
            ranges: ["Place"],
          }.freeze,
          :broadcast_affiliate_of => {
            schema_name: "broadcastAffiliateOf",
            ranges: ["Organization"],
          }.freeze,
          :broadcast_display_name => {
            schema_name: "broadcastDisplayName",
            ranges: ["Text"],
          }.freeze,
          :broadcast_frequency => {
            schema_name: "broadcastFrequency",
            ranges: ["BroadcastFrequencySpecification", "Text"],
          }.freeze,
          :broadcast_timezone => {
            schema_name: "broadcastTimezone",
            ranges: ["Text"],
          }.freeze,
          :broadcaster => {
            schema_name: "broadcaster",
            ranges: ["Organization"],
          }.freeze,
          :has_broadcast_channel => {
            schema_name: "hasBroadcastChannel",
            ranges: ["BroadcastChannel"],
          }.freeze,
          :parent_service => {
            schema_name: "parentService",
            ranges: ["BroadcastService"],
          }.freeze,
          :video_format => {
            schema_name: "videoFormat",
            ranges: ["Text"],
          }.freeze,
        }.freeze
      end

      def area
        read_property(:area)
      end

      def area=(value)
        write_property(:area, value)
      end

      def broadcast_affiliate_of
        read_property(:broadcast_affiliate_of)
      end

      def broadcast_affiliate_of=(value)
        write_property(:broadcast_affiliate_of, value)
      end

      def broadcast_display_name
        read_property(:broadcast_display_name)
      end

      def broadcast_display_name=(value)
        write_property(:broadcast_display_name, value)
      end

      def broadcast_frequency
        read_property(:broadcast_frequency)
      end

      def broadcast_frequency=(value)
        write_property(:broadcast_frequency, value)
      end

      def broadcast_timezone
        read_property(:broadcast_timezone)
      end

      def broadcast_timezone=(value)
        write_property(:broadcast_timezone, value)
      end

      def broadcaster
        read_property(:broadcaster)
      end

      def broadcaster=(value)
        write_property(:broadcaster, value)
      end

      def has_broadcast_channel
        read_property(:has_broadcast_channel)
      end

      def has_broadcast_channel=(value)
        write_property(:has_broadcast_channel, value)
      end

      def parent_service
        read_property(:parent_service)
      end

      def parent_service=(value)
        write_property(:parent_service, value)
      end

      def video_format
        read_property(:video_format)
      end

      def video_format=(value)
        write_property(:video_format, value)
      end

    end
  end
end
