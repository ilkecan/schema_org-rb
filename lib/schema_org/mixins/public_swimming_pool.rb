require "active_support/concern"

module SchemaOrg
  module Mixins
    module PublicSwimmingPool
      extend ActiveSupport::Concern

      include SportsActivityLocation
    end
  end
end
