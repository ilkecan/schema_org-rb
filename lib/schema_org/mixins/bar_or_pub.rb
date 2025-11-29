require "active_support/concern"

module SchemaOrg
  module Mixins
    module BarOrPub
      extend ActiveSupport::Concern

      include FoodEstablishment
    end
  end
end
