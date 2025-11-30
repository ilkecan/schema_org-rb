require "active_support/concern"

module SchemaOrg
  module Mixins
    module TypeAndQuantityNode
      extend ActiveSupport::Concern

      include StructuredValue

      included do
        option :amount_of_this_good, optional: true # The quantity of the goods included in the offer.
        option :business_function, optional: true # The business function (e.g. sell, lease, repair, dispose) of the offer or component of a bundle (TypeAndQuantityNode). The default is http://purl.org/goodrelations/v1#Sell.
        option :type_of_good, optional: true # The product that this structured value is referring to.
        option :unit_code, optional: true # The unit of measurement given using the UN/CEFACT Common Code (3 characters) or a URL. Other codes than the UN/CEFACT Common Code may be used with a prefix followed by a colon.
        option :unit_text, optional: true # A string or text indicating the unit of measurement. Useful if you cannot provide a standard unit code for <a href='unitCode'>unitCode</a>.
      end
    end
  end
end
