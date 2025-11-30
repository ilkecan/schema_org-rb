require "active_support/concern"

module SchemaOrg
  module Mixins
    module OrderItem
      extend ActiveSupport::Concern

      include Intangible

      included do
        option :order_delivery, optional: true # The delivery of the parcel related to this order or order item.
        option :order_item_number, optional: true # The identifier of the order item.
        option :order_item_status, optional: true # The current status of the order item.
        option :order_quantity, optional: true # The number of the item ordered. If the property is not set, assume the quantity is one.
        option :ordered_item, optional: true # The item ordered.
      end
    end
  end
end
