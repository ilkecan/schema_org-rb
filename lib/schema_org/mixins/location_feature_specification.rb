require "active_support/concern"

module SchemaOrg
  module Mixins
    module LocationFeatureSpecification
      extend ActiveSupport::Concern

      include PropertyValue

      included do
        option :hours_available, optional: true # The hours during which this service or contact is available.
        option :valid_from, optional: true # The date when the item becomes valid.
        option :valid_through, optional: true # The date after when the item is not valid. For example the end of an offer, salary period, or a period of opening hours.
      end
    end
  end
end
