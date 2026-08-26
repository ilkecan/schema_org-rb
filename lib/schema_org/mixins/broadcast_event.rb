module SchemaOrg
  module Mixins
    module BroadcastEvent
      include PublicationEvent

      def self.schema_property_definitions
        {
          :broadcast_of_event => {
            schema_name: "broadcastOfEvent",
            ranges: ["Event"],
          }.freeze,
          :is_live_broadcast => {
            schema_name: "isLiveBroadcast",
            ranges: ["Boolean"],
          }.freeze,
          :video_format => {
            schema_name: "videoFormat",
            ranges: ["Text"],
          }.freeze,
        }.freeze
      end

      def broadcast_of_event
        read_property(:broadcast_of_event)
      end

      def broadcast_of_event=(value)
        write_property(:broadcast_of_event, value)
      end

      def is_live_broadcast
        read_property(:is_live_broadcast)
      end

      def is_live_broadcast=(value)
        write_property(:is_live_broadcast, value)
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
