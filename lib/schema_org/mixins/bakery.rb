require "active_support/concern"

module SchemaOrg
  module Mixins
    module Bakery
      extend ActiveSupport::Concern

      include FoodEstablishment
    end
  end
end
