require "active_support/concern"

module SchemaOrg
  module Mixins
    module FoodEvent
      extend ActiveSupport::Concern

      include Event
    end
  end
end
