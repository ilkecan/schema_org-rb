require "active_support/concern"

module SchemaOrg
  module Mixins
    module Restaurant
      extend ActiveSupport::Concern

      include FoodEstablishment
    end
  end
end
