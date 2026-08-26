# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module BroadcastChannel
      include Intangible

      def self.schema_property_definitions
        {
          broadcast_channel_id: {
            schema_name: "broadcastChannelId",
            schema_url: "https://schema.org/broadcastChannelId",
            comment_lines: ["The unique address by which the BroadcastService can be identified in a provider lineup. In US, this is typically a number."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          broadcast_frequency: {
            schema_name: "broadcastFrequency",
            schema_url: "https://schema.org/broadcastFrequency",
            comment_lines: ["The frequency used for over-the-air broadcasts. Numeric values or simple ranges, e.g. 87-99. In addition a shortcut idiom is supported for frequencies of AM and FM radio channels, e.g. \"87 FM\"."].freeze,
            ranges: ["BroadcastFrequencySpecification", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          broadcast_service_tier: {
            schema_name: "broadcastServiceTier",
            schema_url: "https://schema.org/broadcastServiceTier",
            comment_lines: ["The type of service required to have access to the channel (e.g. Standard or Premium)."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          genre: {
            schema_name: "genre",
            schema_url: "https://schema.org/genre",
            comment_lines: ["Genre of the creative work, broadcast channel or group."].freeze,
            ranges: ["DefinedTerm", "Text", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          in_broadcast_lineup: {
            schema_name: "inBroadcastLineup",
            schema_url: "https://schema.org/inBroadcastLineup",
            comment_lines: ["The CableOrSatelliteService offering the channel."].freeze,
            ranges: ["CableOrSatelliteService"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          provides_broadcast_service: {
            schema_name: "providesBroadcastService",
            schema_url: "https://schema.org/providesBroadcastService",
            comment_lines: ["The BroadcastService offered on this channel."].freeze,
            ranges: ["BroadcastService"].freeze,
            external_ranges: [].freeze,
            inverse_of: "hasBroadcastChannel",
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The unique address by which the BroadcastService can be identified in a provider lineup. In US, this is typically a number.
      def broadcast_channel_id
        read_property(:broadcast_channel_id)
      end

      # The unique address by which the BroadcastService can be identified in a provider lineup. In US, this is typically a number.
      def broadcast_channel_id=(value)
        write_property(:broadcast_channel_id, value)
      end

      # The frequency used for over-the-air broadcasts. Numeric values or simple ranges, e.g. 87-99. In addition a shortcut idiom is supported for frequencies of AM and FM radio channels, e.g. "87 FM".
      def broadcast_frequency
        read_property(:broadcast_frequency)
      end

      # The frequency used for over-the-air broadcasts. Numeric values or simple ranges, e.g. 87-99. In addition a shortcut idiom is supported for frequencies of AM and FM radio channels, e.g. "87 FM".
      def broadcast_frequency=(value)
        write_property(:broadcast_frequency, value)
      end

      # The type of service required to have access to the channel (e.g. Standard or Premium).
      def broadcast_service_tier
        read_property(:broadcast_service_tier)
      end

      # The type of service required to have access to the channel (e.g. Standard or Premium).
      def broadcast_service_tier=(value)
        write_property(:broadcast_service_tier, value)
      end

      # Genre of the creative work, broadcast channel or group.
      def genre
        read_property(:genre)
      end

      # Genre of the creative work, broadcast channel or group.
      def genre=(value)
        write_property(:genre, value)
      end

      # The CableOrSatelliteService offering the channel.
      def in_broadcast_lineup
        read_property(:in_broadcast_lineup)
      end

      # The CableOrSatelliteService offering the channel.
      def in_broadcast_lineup=(value)
        write_property(:in_broadcast_lineup, value)
      end

      # The BroadcastService offered on this channel.
      # Inverse-property: `hasBroadcastChannel`.
      def provides_broadcast_service
        read_property(:provides_broadcast_service)
      end

      # The BroadcastService offered on this channel.
      # Inverse-property: `hasBroadcastChannel`.
      def provides_broadcast_service=(value)
        write_property(:provides_broadcast_service, value)
      end
    end
  end
end
