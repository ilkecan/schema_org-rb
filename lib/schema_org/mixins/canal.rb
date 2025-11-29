require "active_support/concern"

module SchemaOrg
  module Mixins
    module Canal
      extend ActiveSupport::Concern

      include BodyOfWater
    end
  end
end
