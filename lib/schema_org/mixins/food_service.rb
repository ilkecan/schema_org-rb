require "active_support/concern"

module SchemaOrg
  module Mixins
    module FoodService
      extend ActiveSupport::Concern

      include Service
    end
  end
end
