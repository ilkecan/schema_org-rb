require "active_support/concern"

module SchemaOrg
  module Mixins
    module IndividualProduct
      extend ActiveSupport::Concern

      include Product

      included do
        option :serial_number, optional: true # The serial number or any alphanumeric identifier of a particular product. When attached to an offer, it is a shortcut for the serial number of the product included in the offer.
      end
    end
  end
end
