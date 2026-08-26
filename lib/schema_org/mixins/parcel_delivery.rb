module SchemaOrg
  module Mixins
    module ParcelDelivery
      include Intangible

      def self.schema_property_definitions
        {
          :carrier => {
            schema_name: "carrier",
            ranges: ["Organization"],
          }.freeze,
          :delivery_address => {
            schema_name: "deliveryAddress",
            ranges: ["PostalAddress"],
          }.freeze,
          :delivery_status => {
            schema_name: "deliveryStatus",
            ranges: ["DeliveryEvent"],
          }.freeze,
          :expected_arrival_from => {
            schema_name: "expectedArrivalFrom",
            ranges: ["Date", "DateTime"],
          }.freeze,
          :expected_arrival_until => {
            schema_name: "expectedArrivalUntil",
            ranges: ["Date", "DateTime"],
          }.freeze,
          :has_delivery_method => {
            schema_name: "hasDeliveryMethod",
            ranges: ["DeliveryMethod"],
          }.freeze,
          :item_shipped => {
            schema_name: "itemShipped",
            ranges: ["Product"],
          }.freeze,
          :origin_address => {
            schema_name: "originAddress",
            ranges: ["PostalAddress"],
          }.freeze,
          :part_of_order => {
            schema_name: "partOfOrder",
            ranges: ["Order"],
          }.freeze,
          :provider => {
            schema_name: "provider",
            ranges: ["Organization", "Person"],
          }.freeze,
          :tracking_number => {
            schema_name: "trackingNumber",
            ranges: ["Text"],
          }.freeze,
          :tracking_url => {
            schema_name: "trackingUrl",
            ranges: ["URL"],
          }.freeze,
        }.freeze
      end

      def carrier
        read_property(:carrier)
      end

      def carrier=(value)
        write_property(:carrier, value)
      end

      def delivery_address
        read_property(:delivery_address)
      end

      def delivery_address=(value)
        write_property(:delivery_address, value)
      end

      def delivery_status
        read_property(:delivery_status)
      end

      def delivery_status=(value)
        write_property(:delivery_status, value)
      end

      def expected_arrival_from
        read_property(:expected_arrival_from)
      end

      def expected_arrival_from=(value)
        write_property(:expected_arrival_from, value)
      end

      def expected_arrival_until
        read_property(:expected_arrival_until)
      end

      def expected_arrival_until=(value)
        write_property(:expected_arrival_until, value)
      end

      def has_delivery_method
        read_property(:has_delivery_method)
      end

      def has_delivery_method=(value)
        write_property(:has_delivery_method, value)
      end

      def item_shipped
        read_property(:item_shipped)
      end

      def item_shipped=(value)
        write_property(:item_shipped, value)
      end

      def origin_address
        read_property(:origin_address)
      end

      def origin_address=(value)
        write_property(:origin_address, value)
      end

      def part_of_order
        read_property(:part_of_order)
      end

      def part_of_order=(value)
        write_property(:part_of_order, value)
      end

      def provider
        read_property(:provider)
      end

      def provider=(value)
        write_property(:provider, value)
      end

      def tracking_number
        read_property(:tracking_number)
      end

      def tracking_number=(value)
        write_property(:tracking_number, value)
      end

      def tracking_url
        read_property(:tracking_url)
      end

      def tracking_url=(value)
        write_property(:tracking_url, value)
      end

    end
  end
end
