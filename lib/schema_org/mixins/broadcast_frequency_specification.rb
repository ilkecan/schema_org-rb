# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module BroadcastFrequencySpecification
      include Intangible

      def self.schema_property_definitions
        {
          broadcast_frequency_value: {
            schema_name: "broadcastFrequencyValue",
            schema_url: "https://schema.org/broadcastFrequencyValue",
            comment_lines: ["The frequency in MHz for a particular broadcast."].freeze,
            ranges: ["Number", "QuantitativeValue"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          broadcast_signal_modulation: {
            schema_name: "broadcastSignalModulation",
            schema_url: "https://schema.org/broadcastSignalModulation",
            comment_lines: ["The modulation (e.g. FM, AM, etc) used by a particular broadcast service."].freeze,
            ranges: ["QualitativeValue", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          broadcast_sub_channel: {
            schema_name: "broadcastSubChannel",
            schema_url: "https://schema.org/broadcastSubChannel",
            comment_lines: ["The subchannel used for the broadcast."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The frequency in MHz for a particular broadcast.
      def broadcast_frequency_value
        read_property(:broadcast_frequency_value)
      end

      # The frequency in MHz for a particular broadcast.
      def broadcast_frequency_value=(value)
        write_property(:broadcast_frequency_value, value)
      end

      # The modulation (e.g. FM, AM, etc) used by a particular broadcast service.
      def broadcast_signal_modulation
        read_property(:broadcast_signal_modulation)
      end

      # The modulation (e.g. FM, AM, etc) used by a particular broadcast service.
      def broadcast_signal_modulation=(value)
        write_property(:broadcast_signal_modulation, value)
      end

      # The subchannel used for the broadcast.
      def broadcast_sub_channel
        read_property(:broadcast_sub_channel)
      end

      # The subchannel used for the broadcast.
      def broadcast_sub_channel=(value)
        write_property(:broadcast_sub_channel, value)
      end
    end
  end
end
