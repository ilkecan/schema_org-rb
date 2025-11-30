require "active_support/concern"

module SchemaOrg
  module Mixins
    module InviteAction
      extend ActiveSupport::Concern

      include CommunicateAction

      included do
        option :event, optional: true # Upcoming or past event associated with this place, organization, or action. Supersedes `events`.
      end
    end
  end
end
