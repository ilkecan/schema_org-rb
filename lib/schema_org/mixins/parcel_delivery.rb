# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module ParcelDelivery
      include Intangible

      def self.schema_property_definitions
        {
          carrier: {
            schema_name: "carrier",
            schema_url: "https://schema.org/carrier",
            comment_lines: ["'carrier' is an out-dated term indicating the 'provider' for parcel delivery and flights."].freeze,
            ranges: ["Organization"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: "provider",
            supersedes: nil
          }.freeze,
          delivery_address: {
            schema_name: "deliveryAddress",
            schema_url: "https://schema.org/deliveryAddress",
            comment_lines: ["Destination address."].freeze,
            ranges: ["PostalAddress"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          delivery_status: {
            schema_name: "deliveryStatus",
            schema_url: "https://schema.org/deliveryStatus",
            comment_lines: ["New entry added as the package passes through each leg of its journey (from shipment to final delivery)."].freeze,
            ranges: ["DeliveryEvent"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          expected_arrival_from: {
            schema_name: "expectedArrivalFrom",
            schema_url: "https://schema.org/expectedArrivalFrom",
            comment_lines: ["The earliest date the package may arrive."].freeze,
            ranges: ["Date", "DateTime"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          expected_arrival_until: {
            schema_name: "expectedArrivalUntil",
            schema_url: "https://schema.org/expectedArrivalUntil",
            comment_lines: ["The latest date the package may arrive."].freeze,
            ranges: ["Date", "DateTime"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          has_delivery_method: {
            schema_name: "hasDeliveryMethod",
            schema_url: "https://schema.org/hasDeliveryMethod",
            comment_lines: ["Method used for delivery or shipping."].freeze,
            ranges: ["DeliveryMethod"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          item_shipped: {
            schema_name: "itemShipped",
            schema_url: "https://schema.org/itemShipped",
            comment_lines: ["Item(s) being shipped."].freeze,
            ranges: ["Product"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          origin_address: {
            schema_name: "originAddress",
            schema_url: "https://schema.org/originAddress",
            comment_lines: ["Shipper's address."].freeze,
            ranges: ["PostalAddress"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          part_of_order: {
            schema_name: "partOfOrder",
            schema_url: "https://schema.org/partOfOrder",
            comment_lines: ["The overall order the items in this delivery were included in."].freeze,
            ranges: ["Order"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          provider: {
            schema_name: "provider",
            schema_url: "https://schema.org/provider",
            comment_lines: ["The service provider, service operator, or service performer; the goods producer. Another party (a seller) may offer those services or goods on behalf of the provider. A provider may also serve as the seller."].freeze,
            ranges: ["Organization", "Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: "carrier"
          }.freeze,
          tracking_number: {
            schema_name: "trackingNumber",
            schema_url: "https://schema.org/trackingNumber",
            comment_lines: ["Shipper tracking number."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          tracking_url: {
            schema_name: "trackingUrl",
            schema_url: "https://schema.org/trackingUrl",
            comment_lines: ["Tracking url for the parcel delivery."].freeze,
            ranges: ["URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # 'carrier' is an out-dated term indicating the 'provider' for parcel delivery and flights.
      # Superseded by `provider`.
      def carrier
        read_property(:carrier)
      end

      # 'carrier' is an out-dated term indicating the 'provider' for parcel delivery and flights.
      # Superseded by `provider`.
      def carrier=(value)
        write_property(:carrier, value)
      end

      # Destination address.
      def delivery_address
        read_property(:delivery_address)
      end

      # Destination address.
      def delivery_address=(value)
        write_property(:delivery_address, value)
      end

      # New entry added as the package passes through each leg of its journey (from shipment to final delivery).
      def delivery_status
        read_property(:delivery_status)
      end

      # New entry added as the package passes through each leg of its journey (from shipment to final delivery).
      def delivery_status=(value)
        write_property(:delivery_status, value)
      end

      # The earliest date the package may arrive.
      def expected_arrival_from
        read_property(:expected_arrival_from)
      end

      # The earliest date the package may arrive.
      def expected_arrival_from=(value)
        write_property(:expected_arrival_from, value)
      end

      # The latest date the package may arrive.
      def expected_arrival_until
        read_property(:expected_arrival_until)
      end

      # The latest date the package may arrive.
      def expected_arrival_until=(value)
        write_property(:expected_arrival_until, value)
      end

      # Method used for delivery or shipping.
      def has_delivery_method
        read_property(:has_delivery_method)
      end

      # Method used for delivery or shipping.
      def has_delivery_method=(value)
        write_property(:has_delivery_method, value)
      end

      # Item(s) being shipped.
      def item_shipped
        read_property(:item_shipped)
      end

      # Item(s) being shipped.
      def item_shipped=(value)
        write_property(:item_shipped, value)
      end

      # Shipper's address.
      def origin_address
        read_property(:origin_address)
      end

      # Shipper's address.
      def origin_address=(value)
        write_property(:origin_address, value)
      end

      # The overall order the items in this delivery were included in.
      def part_of_order
        read_property(:part_of_order)
      end

      # The overall order the items in this delivery were included in.
      def part_of_order=(value)
        write_property(:part_of_order, value)
      end

      # The service provider, service operator, or service performer; the goods producer. Another party (a seller) may offer those services or goods on behalf of the provider. A provider may also serve as the seller.
      # Supersedes `carrier`.
      def provider
        read_property(:provider)
      end

      # The service provider, service operator, or service performer; the goods producer. Another party (a seller) may offer those services or goods on behalf of the provider. A provider may also serve as the seller.
      # Supersedes `carrier`.
      def provider=(value)
        write_property(:provider, value)
      end

      # Shipper tracking number.
      def tracking_number
        read_property(:tracking_number)
      end

      # Shipper tracking number.
      def tracking_number=(value)
        write_property(:tracking_number, value)
      end

      # Tracking url for the parcel delivery.
      def tracking_url
        read_property(:tracking_url)
      end

      # Tracking url for the parcel delivery.
      def tracking_url=(value)
        write_property(:tracking_url, value)
      end
    end
  end
end
