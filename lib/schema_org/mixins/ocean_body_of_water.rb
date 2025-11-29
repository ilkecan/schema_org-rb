require "active_support/concern"

module SchemaOrg
  module Mixins
    module OceanBodyOfWater
      extend ActiveSupport::Concern

      include BodyOfWater
    end
  end
end
