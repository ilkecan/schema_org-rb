require "active_support/concern"

module SchemaOrg
  module Mixins
    module InteractionCounter
      extend ActiveSupport::Concern

      include StructuredValue

      included do
        option :end_time # The endTime of something. For a reserved event or service (e.g. FoodEstablishmentReservation), the time that it is expected to end. For actions that span a period of time, when the action was performed. E.g. John wrote a book from January to *December*. For media, including audio and video, it's the time offset of the end of a clip within a larger file.\n\nNote that Event uses startDate/endDate instead of startTime/endTime, even when describing dates with times. This situation may be clarified in future revisions.
        option :interaction_service # The WebSite or SoftwareApplication where the interactions took place.
        option :interaction_type # The Action representing the type of interaction. For up votes, +1s, etc. use [[LikeAction]]. For down votes use [[DislikeAction]]. Otherwise, use the most specific Action.
        option :start_time # The startTime of something. For a reserved event or service (e.g. FoodEstablishmentReservation), the time that it is expected to start. For actions that span a period of time, when the action was performed. E.g. John wrote a book from *January* to December. For media, including audio and video, it's the time offset of the start of a clip within a larger file.\n\nNote that Event uses startDate/endDate instead of startTime/endTime, even when describing dates with times. This situation may be clarified in future revisions.
        option :user_interaction_count # The number of interactions for the CreativeWork using the WebSite or SoftwareApplication.
        option :location # The location of, for example, where an event is happening, where an organization is located, or where an action takes place.
      end
    end
  end
end
