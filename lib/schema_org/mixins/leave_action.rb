require "active_support/concern"

module SchemaOrg
  module Mixins
    module LeaveAction
      extend ActiveSupport::Concern

      include InteractAction

      included do
        option :event # Upcoming or past event associated with this place, organization, or action.
      end
    end
  end
end
