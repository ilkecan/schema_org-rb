require "active_support/concern"

module SchemaOrg
  module Mixins
    module IceCreamShop
      extend ActiveSupport::Concern

      include FoodEstablishment
    end
  end
end
