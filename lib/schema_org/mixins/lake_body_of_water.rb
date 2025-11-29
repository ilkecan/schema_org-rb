require "active_support/concern"

module SchemaOrg
  module Mixins
    module LakeBodyOfWater
      extend ActiveSupport::Concern

      include BodyOfWater
    end
  end
end
