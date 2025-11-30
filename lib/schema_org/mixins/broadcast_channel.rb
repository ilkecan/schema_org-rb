require "active_support/concern"

module SchemaOrg
  module Mixins
    module BroadcastChannel
      extend ActiveSupport::Concern

      include Intangible

      included do
        option :broadcast_channel_id, optional: true # The unique address by which the BroadcastService can be identified in a provider lineup. In US, this is typically a number.
        option :broadcast_frequency, optional: true # The frequency used for over-the-air broadcasts. Numeric values or simple ranges, e.g. 87-99. In addition a shortcut idiom is supported for frequencies of AM and FM radio channels, e.g. "87 FM".
        option :broadcast_service_tier, optional: true # The type of service required to have access to the channel (e.g. Standard or Premium).
        option :genre, optional: true # Genre of the creative work, broadcast channel or group.
        option :in_broadcast_lineup, optional: true # The CableOrSatelliteService offering the channel.
        option :provides_broadcast_service, optional: true # The BroadcastService offered on this channel. Inverse-property: `has_broadcast_channel`.
      end
    end
  end
end
