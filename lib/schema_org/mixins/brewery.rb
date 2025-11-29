require "active_support/concern"

module SchemaOrg
  module Mixins
    module Brewery
      extend ActiveSupport::Concern

      include FoodEstablishment
    end
  end
end
