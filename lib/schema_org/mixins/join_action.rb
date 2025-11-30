require "active_support/concern"

module SchemaOrg
  module Mixins
    module JoinAction
      extend ActiveSupport::Concern

      include InteractAction

      included do
        option :event # Upcoming or past event associated with this place, organization, or action. Supersedes `events`.
      end
    end
  end
end
