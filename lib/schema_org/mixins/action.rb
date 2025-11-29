require "active_support/concern"

module SchemaOrg
  module Mixins
    module Action
      extend ActiveSupport::Concern

      include Thing

      included do
        option :action_process # Description of the process by which the action was performed.
        option :action_status # Indicates the current disposition of the Action.
        option :agent # The direct performer or driver of the action (animate or inanimate). E.g. *John* wrote a book.
        option :end_time # The endTime of something. For a reserved event or service (e.g. FoodEstablishmentReservation), the time that it is expected to end. For actions that span a period of time, when the action was performed. E.g. John wrote a book from January to *December*. For media, including audio and video, it's the time offset of the end of a clip within a larger file.\n\nNote that Event uses startDate/endDate instead of startTime/endTime, even when describing dates with times. This situation may be clarified in future revisions.
        option :error # For failed actions, more information on the cause of the failure.
        option :start_time # The startTime of something. For a reserved event or service (e.g. FoodEstablishmentReservation), the time that it is expected to start. For actions that span a period of time, when the action was performed. E.g. John wrote a book from *January* to December. For media, including audio and video, it's the time offset of the start of a clip within a larger file.\n\nNote that Event uses startDate/endDate instead of startTime/endTime, even when describing dates with times. This situation may be clarified in future revisions.
        option :target # Indicates a target EntryPoint, or url, for an Action.
        option :result # The result produced in the action. E.g. John wrote *a book*.
        option :instrument # The object that helped the agent perform the action. E.g. John wrote a book with *a pen*.
        option :object # The object upon which the action is carried out, whose state is kept intact or changed. Also known as the semantic roles patient, affected or undergoer (which change their state) or theme (which doesn't). E.g. John read *a book*.
        option :location # The location of, for example, where an event is happening, where an organization is located, or where an action takes place.
        option :participant # Other co-agents that participated in the action indirectly. E.g. John wrote a book with *Steve*.
      end
    end
  end
end
