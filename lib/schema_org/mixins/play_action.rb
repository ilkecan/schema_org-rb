require "active_support/concern"

module SchemaOrg
  module Mixins
    module PlayAction
      extend ActiveSupport::Concern

      include Action

      included do
        option :audience # An intended audience, i.e. a group for whom something was created.
        option :event # Upcoming or past event associated with this place, organization, or action.
      end
    end
  end
end
