module SchemaOrg
  module Mixins
    module BroadcastChannel
      include Intangible

      def self.schema_property_definitions
        {
          :broadcast_channel_id => {
            schema_name: "broadcastChannelId",
            ranges: ["Text"],
          }.freeze,
          :broadcast_frequency => {
            schema_name: "broadcastFrequency",
            ranges: ["BroadcastFrequencySpecification", "Text"],
          }.freeze,
          :broadcast_service_tier => {
            schema_name: "broadcastServiceTier",
            ranges: ["Text"],
          }.freeze,
          :genre => {
            schema_name: "genre",
            ranges: ["DefinedTerm", "Text", "URL"],
          }.freeze,
          :in_broadcast_lineup => {
            schema_name: "inBroadcastLineup",
            ranges: ["CableOrSatelliteService"],
          }.freeze,
          :provides_broadcast_service => {
            schema_name: "providesBroadcastService",
            ranges: ["BroadcastService"],
          }.freeze,
        }.freeze
      end

      def broadcast_channel_id
        read_property(:broadcast_channel_id)
      end

      def broadcast_channel_id=(value)
        write_property(:broadcast_channel_id, value)
      end

      def broadcast_frequency
        read_property(:broadcast_frequency)
      end

      def broadcast_frequency=(value)
        write_property(:broadcast_frequency, value)
      end

      def broadcast_service_tier
        read_property(:broadcast_service_tier)
      end

      def broadcast_service_tier=(value)
        write_property(:broadcast_service_tier, value)
      end

      def genre
        read_property(:genre)
      end

      def genre=(value)
        write_property(:genre, value)
      end

      def in_broadcast_lineup
        read_property(:in_broadcast_lineup)
      end

      def in_broadcast_lineup=(value)
        write_property(:in_broadcast_lineup, value)
      end

      def provides_broadcast_service
        read_property(:provides_broadcast_service)
      end

      def provides_broadcast_service=(value)
        write_property(:provides_broadcast_service, value)
      end

    end
  end
end
