require "active_support/concern"

module SchemaOrg
  module Mixins
    module Winery
      extend ActiveSupport::Concern

      include FoodEstablishment
    end
  end
end
