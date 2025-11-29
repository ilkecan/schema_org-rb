require "active_support/concern"

module SchemaOrg
  module Mixins
    module GroceryStore
      extend ActiveSupport::Concern

      include Store
    end
  end
end
