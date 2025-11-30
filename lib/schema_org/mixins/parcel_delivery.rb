require "active_support/concern"

module SchemaOrg
  module Mixins
    module ParcelDelivery
      extend ActiveSupport::Concern

      include Intangible

      included do
        option :carrier, optional: true # 'carrier' is an out-dated term indicating the 'provider' for parcel delivery and flights. Superseded by `provider`.
        option :delivery_address, optional: true # Destination address.
        option :delivery_status, optional: true # New entry added as the package passes through each leg of its journey (from shipment to final delivery).
        option :expected_arrival_from, optional: true # The earliest date the package may arrive.
        option :expected_arrival_until, optional: true # The latest date the package may arrive.
        option :has_delivery_method, optional: true # Method used for delivery or shipping.
        option :item_shipped, optional: true # Item(s) being shipped.
        option :origin_address, optional: true # Shipper's address.
        option :part_of_order, optional: true # The overall order the items in this delivery were included in.
        option :tracking_number, optional: true # Shipper tracking number.
        option :tracking_url, optional: true # Tracking url for the parcel delivery.
        option :provider, optional: true # The service provider, service operator, or service performer; the goods producer. Another party (a seller) may offer those services or goods on behalf of the provider. A provider may also serve as the seller. Supersedes `carrier`.
      end
    end
  end
end
