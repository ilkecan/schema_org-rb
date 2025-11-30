require "active_support/concern"

module SchemaOrg
  module Mixins
    module OpeningHoursSpecification
      extend ActiveSupport::Concern

      include StructuredValue

      included do
        option :closes, optional: true # The closing hour of the place or service on the given day(s) of the week.
        option :day_of_week, optional: true # The day of the week for which these opening hours are valid.
        option :opens, optional: true # The opening hour of the place or service on the given day(s) of the week.
        option :valid_from, optional: true # The date when the item becomes valid.
        option :valid_through, optional: true # The date after when the item is not valid. For example the end of an offer, salary period, or a period of opening hours.
      end
    end
  end
end
