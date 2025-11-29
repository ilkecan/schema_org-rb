require "active_support/concern"

module SchemaOrg
  module Mixins
    module CafeOrCoffeeShop
      extend ActiveSupport::Concern

      include FoodEstablishment
    end
  end
end
