require "active_support/concern"

module SchemaOrg
  module Mixins
    module Distillery
      extend ActiveSupport::Concern

      include FoodEstablishment
    end
  end
end
