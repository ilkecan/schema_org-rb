require "active_support/concern"

module SchemaOrg
  module Mixins
    module MotorcycleRepair
      extend ActiveSupport::Concern

      include AutomotiveBusiness
    end
  end
end
