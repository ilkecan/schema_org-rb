require "active_support/concern"

module SchemaOrg
  module Mixins
    module DeliveryEvent
      extend ActiveSupport::Concern

      include Event

      included do
        option :access_code, optional: true # Password, PIN, or access code needed for delivery (e.g. from a locker).
        option :available_from, optional: true # When the item is available for pickup from the store, locker, etc.
        option :available_through, optional: true # After this date, the item will no longer be available for pickup.
        option :has_delivery_method, optional: true # Method used for delivery or shipping.
      end
    end
  end
end
