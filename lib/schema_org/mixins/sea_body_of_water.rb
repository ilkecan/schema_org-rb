require "active_support/concern"

module SchemaOrg
  module Mixins
    module SeaBodyOfWater
      extend ActiveSupport::Concern

      include BodyOfWater
    end
  end
end
