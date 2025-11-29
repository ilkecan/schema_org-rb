require "active_support/concern"

module SchemaOrg
  module Mixins
    module Waterfall
      extend ActiveSupport::Concern

      include BodyOfWater
    end
  end
end
