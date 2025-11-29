require "active_support/concern"

module SchemaOrg
  module Mixins
    module ReserveAction
      extend ActiveSupport::Concern

      include PlanAction
    end
  end
end
