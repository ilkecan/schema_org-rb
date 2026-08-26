module SchemaOrg
  module Mixins
    module DeliveryEvent
      include Event

      def self.schema_property_definitions
        {
          :access_code => {
            schema_name: "accessCode",
            ranges: ["Text"],
          }.freeze,
          :available_from => {
            schema_name: "availableFrom",
            ranges: ["DateTime"],
          }.freeze,
          :available_through => {
            schema_name: "availableThrough",
            ranges: ["DateTime"],
          }.freeze,
          :has_delivery_method => {
            schema_name: "hasDeliveryMethod",
            ranges: ["DeliveryMethod"],
          }.freeze,
        }.freeze
      end

      def access_code
        read_property(:access_code)
      end

      def access_code=(value)
        write_property(:access_code, value)
      end

      def available_from
        read_property(:available_from)
      end

      def available_from=(value)
        write_property(:available_from, value)
      end

      def available_through
        read_property(:available_through)
      end

      def available_through=(value)
        write_property(:available_through, value)
      end

      def has_delivery_method
        read_property(:has_delivery_method)
      end

      def has_delivery_method=(value)
        write_property(:has_delivery_method, value)
      end

    end
  end
end
