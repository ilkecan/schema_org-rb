require "active_support/concern"

module SchemaOrg
  module Mixins
    module ScheduleAction
      extend ActiveSupport::Concern

      include PlanAction
    end
  end
end
