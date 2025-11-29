require "active_support/concern"

module SchemaOrg
  module Mixins
    module PostalCodeRangeSpecification
      extend ActiveSupport::Concern

      include StructuredValue

      included do
        option :postal_code_begin # First postal code in a range (included).
        option :postal_code_end # Last postal code in the range (included). Needs to be after [[postalCodeBegin]].
      end
    end
  end
end
