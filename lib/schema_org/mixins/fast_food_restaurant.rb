require "active_support/concern"

module SchemaOrg
  module Mixins
    module FastFoodRestaurant
      extend ActiveSupport::Concern

      include FoodEstablishment
    end
  end
end
