require "active_support/concern"

module SchemaOrg
  module Mixins
    module RsvpAction
      extend ActiveSupport::Concern

      include InformAction

      included do
        option :additional_number_of_guests, optional: true # If responding yes, the number of guests who will attend in addition to the invitee.
        option :comment, optional: true # Comments, typically from users.
        option :rsvp_response, optional: true # The response (yes, no, maybe) to the RSVP.
      end
    end
  end
end
