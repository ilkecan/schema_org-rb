# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module BroadcastService
      include Service

      def self.schema_property_definitions
        {
          area: {
            schema_name: "area",
            schema_url: "https://schema.org/area",
            comment_lines: ["The area within which users can expect to reach the broadcast service."].freeze,
            ranges: ["Place"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: "serviceArea",
            supersedes: nil
          }.freeze,
          broadcast_affiliate_of: {
            schema_name: "broadcastAffiliateOf",
            schema_url: "https://schema.org/broadcastAffiliateOf",
            comment_lines: ["The media network(s) whose content is broadcast on this station."].freeze,
            ranges: ["Organization"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          broadcast_display_name: {
            schema_name: "broadcastDisplayName",
            schema_url: "https://schema.org/broadcastDisplayName",
            comment_lines: ["The name displayed in the channel guide. For many US affiliates, it is the network name."].freeze,
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
          broadcast_timezone: {
            schema_name: "broadcastTimezone",
            schema_url: "https://schema.org/broadcastTimezone",
            comment_lines: ["The timezone in [ISO 8601 format](http://en.wikipedia.org/wiki/ISO_8601) for which the service bases its broadcasts."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          broadcaster: {
            schema_name: "broadcaster",
            schema_url: "https://schema.org/broadcaster",
            comment_lines: ["The organization owning or operating the broadcast service."].freeze,
            ranges: ["Organization"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          call_sign: {
            schema_name: "callSign",
            schema_url: "https://schema.org/callSign",
            comment_lines: ["A [callsign](https://en.wikipedia.org/wiki/Call_sign), as used in broadcasting and radio communications to identify people, radio and TV stations, or vehicles."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          has_broadcast_channel: {
            schema_name: "hasBroadcastChannel",
            schema_url: "https://schema.org/hasBroadcastChannel",
            comment_lines: ["A broadcast channel of a broadcast service."].freeze,
            ranges: ["BroadcastChannel"].freeze,
            external_ranges: [].freeze,
            inverse_of: "providesBroadcastService",
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          in_language: {
            schema_name: "inLanguage",
            schema_url: "https://schema.org/inLanguage",
            comment_lines: ["The language of the content or performance or used in an action. Please use one of the language codes from the [IETF BCP 47 standard](http://tools.ietf.org/html/bcp47). See also [[availableLanguage]]."].freeze,
            ranges: ["Language", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: "language"
          }.freeze,
          parent_service: {
            schema_name: "parentService",
            schema_url: "https://schema.org/parentService",
            comment_lines: ["A broadcast service to which the broadcast service may belong to such as regional variations of a national channel."].freeze,
            ranges: ["BroadcastService"].freeze,
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

      # The area within which users can expect to reach the broadcast service.
      # Superseded by `serviceArea`.
      def area
        read_property(:area)
      end

      # The area within which users can expect to reach the broadcast service.
      # Superseded by `serviceArea`.
      def area=(value)
        write_property(:area, value)
      end

      # The media network(s) whose content is broadcast on this station.
      def broadcast_affiliate_of
        read_property(:broadcast_affiliate_of)
      end

      # The media network(s) whose content is broadcast on this station.
      def broadcast_affiliate_of=(value)
        write_property(:broadcast_affiliate_of, value)
      end

      # The name displayed in the channel guide. For many US affiliates, it is the network name.
      def broadcast_display_name
        read_property(:broadcast_display_name)
      end

      # The name displayed in the channel guide. For many US affiliates, it is the network name.
      def broadcast_display_name=(value)
        write_property(:broadcast_display_name, value)
      end

      # The frequency used for over-the-air broadcasts. Numeric values or simple ranges, e.g. 87-99. In addition a shortcut idiom is supported for frequencies of AM and FM radio channels, e.g. "87 FM".
      def broadcast_frequency
        read_property(:broadcast_frequency)
      end

      # The frequency used for over-the-air broadcasts. Numeric values or simple ranges, e.g. 87-99. In addition a shortcut idiom is supported for frequencies of AM and FM radio channels, e.g. "87 FM".
      def broadcast_frequency=(value)
        write_property(:broadcast_frequency, value)
      end

      # The timezone in [ISO 8601 format](http://en.wikipedia.org/wiki/ISO_8601) for which the service bases its broadcasts.
      def broadcast_timezone
        read_property(:broadcast_timezone)
      end

      # The timezone in [ISO 8601 format](http://en.wikipedia.org/wiki/ISO_8601) for which the service bases its broadcasts.
      def broadcast_timezone=(value)
        write_property(:broadcast_timezone, value)
      end

      # The organization owning or operating the broadcast service.
      def broadcaster
        read_property(:broadcaster)
      end

      # The organization owning or operating the broadcast service.
      def broadcaster=(value)
        write_property(:broadcaster, value)
      end

      # A [callsign](https://en.wikipedia.org/wiki/Call_sign), as used in broadcasting and radio communications to identify people, radio and TV stations, or vehicles.
      def call_sign
        read_property(:call_sign)
      end

      # A [callsign](https://en.wikipedia.org/wiki/Call_sign), as used in broadcasting and radio communications to identify people, radio and TV stations, or vehicles.
      def call_sign=(value)
        write_property(:call_sign, value)
      end

      # A broadcast channel of a broadcast service.
      # Inverse-property: `providesBroadcastService`.
      def has_broadcast_channel
        read_property(:has_broadcast_channel)
      end

      # A broadcast channel of a broadcast service.
      # Inverse-property: `providesBroadcastService`.
      def has_broadcast_channel=(value)
        write_property(:has_broadcast_channel, value)
      end

      # The language of the content or performance or used in an action. Please use one of the language codes from the [IETF BCP 47 standard](http://tools.ietf.org/html/bcp47). See also [[availableLanguage]].
      # Supersedes `language`.
      def in_language
        read_property(:in_language)
      end

      # The language of the content or performance or used in an action. Please use one of the language codes from the [IETF BCP 47 standard](http://tools.ietf.org/html/bcp47). See also [[availableLanguage]].
      # Supersedes `language`.
      def in_language=(value)
        write_property(:in_language, value)
      end

      # A broadcast service to which the broadcast service may belong to such as regional variations of a national channel.
      def parent_service
        read_property(:parent_service)
      end

      # A broadcast service to which the broadcast service may belong to such as regional variations of a national channel.
      def parent_service=(value)
        write_property(:parent_service, value)
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
