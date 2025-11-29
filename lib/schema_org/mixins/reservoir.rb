require "active_support/concern"

module SchemaOrg
  module Mixins
    module Reservoir
      extend ActiveSupport::Concern

      include BodyOfWater
    end
  end
end
