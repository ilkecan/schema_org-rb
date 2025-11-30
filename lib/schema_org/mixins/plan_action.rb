require "active_support/concern"

module SchemaOrg
  module Mixins
    module PlanAction
      extend ActiveSupport::Concern

      include OrganizeAction

      included do
        option :scheduled_time, optional: true # The time the object is scheduled to.
      end
    end
  end
end
