require "active_support/concern"

module SchemaOrg
  module Mixins
    module HowToSupply
      extend ActiveSupport::Concern

      include HowToItem

      included do
        option :estimated_cost, optional: true # The estimated cost of the supply or supplies consumed when performing instructions.
      end
    end
  end
end
