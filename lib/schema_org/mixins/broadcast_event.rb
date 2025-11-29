require "active_support/concern"

module SchemaOrg
  module Mixins
    module BroadcastEvent
      extend ActiveSupport::Concern

      include PublicationEvent

      included do
        option :broadcast_of_event # The event being broadcast such as a sporting event or awards ceremony.
        option :is_live_broadcast # True if the broadcast is of a live event.
        option :video_format # The type of screening or video broadcast used (e.g. IMAX, 3D, SD, HD, etc.).
      end
    end
  end
end
