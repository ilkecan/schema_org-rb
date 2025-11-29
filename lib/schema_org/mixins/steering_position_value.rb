require "active_support/concern"

module SchemaOrg
  module Mixins
    module SteeringPositionValue
      extend ActiveSupport::Concern

      include QualitativeValue
    end
  end
end
