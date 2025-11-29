require "active_support/concern"

module SchemaOrg
  module Mixins
    module BodyOfWater
      extend ActiveSupport::Concern

      include Landform
    end
  end
end
