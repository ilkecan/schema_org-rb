require "active_support/concern"

module SchemaOrg
  module Mixins
    module PlayAction
      extend ActiveSupport::Concern

      include Action

      included do
        option :audience # An intended audience, i.e. a group for whom something was created. Supersedes `service_audience`.
        option :event # Upcoming or past event associated with this place, organization, or action. Supersedes `events`.
      end
    end
  end
end
