require "active_support/concern"

module SchemaOrg
  module Mixins
    module OwnershipInfo
      extend ActiveSupport::Concern

      include StructuredValue

      included do
        option :acquired_from, optional: true # The organization or person from which the product was acquired.
        option :owned_from, optional: true # The date and time of obtaining the product.
        option :owned_through, optional: true # The date and time of giving up ownership on the product.
        option :type_of_good, optional: true # The product that this structured value is referring to.
      end
    end
  end
end
