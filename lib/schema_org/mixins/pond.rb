require "active_support/concern"

module SchemaOrg
  module Mixins
    module Pond
      extend ActiveSupport::Concern

      include BodyOfWater
    end
  end
end
