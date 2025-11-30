require "active_support/concern"

module SchemaOrg
  module Mixins
    module CompoundPriceSpecification
      extend ActiveSupport::Concern

      include PriceSpecification

      included do
        option :price_component, optional: true # This property links to all [[UnitPriceSpecification]] nodes that apply in parallel for the [[CompoundPriceSpecification]] node.
      end
    end
  end
end
