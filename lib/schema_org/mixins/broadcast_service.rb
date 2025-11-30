require "active_support/concern"

module SchemaOrg
  module Mixins
    module BroadcastService
      extend ActiveSupport::Concern

      include Service

      included do
        option :area # The area within which users can expect to reach the broadcast service. Superseded by `service_area`.
        option :broadcast_affiliate_of # The media network(s) whose content is broadcast on this station.
        option :broadcast_display_name # The name displayed in the channel guide. For many US affiliates, it is the network name.
        option :broadcast_frequency # The frequency used for over-the-air broadcasts. Numeric values or simple ranges, e.g. 87-99. In addition a shortcut idiom is supported for frequencies of AM and FM radio channels, e.g. "87 FM".
        option :broadcast_timezone # The timezone in [ISO 8601 format](http://en.wikipedia.org/wiki/ISO_8601) for which the service bases its broadcasts.
        option :broadcaster # The organization owning or operating the broadcast service.
        option :parent_service # A broadcast service to which the broadcast service may belong to such as regional variations of a national channel.
        option :video_format # The type of screening or video broadcast used (e.g. IMAX, 3D, SD, HD, etc.).
        option :has_broadcast_channel # A broadcast channel of a broadcast service.
      end
    end
  end
end
