module SchemaOrg
  module Mixins
    module DeliveryChargeSpecification
      include PriceSpecification

      def self.schema_property_definitions
        {
          :applies_to_delivery_method => {
            schema_name: "appliesToDeliveryMethod",
            ranges: ["DeliveryMethod"],
          }.freeze,
          :area_served => {
            schema_name: "areaServed",
            ranges: ["AdministrativeArea", "GeoShape", "Place", "Text"],
          }.freeze,
          :eligible_region => {
            schema_name: "eligibleRegion",
            ranges: ["GeoShape", "Place", "Text"],
          }.freeze,
          :ineligible_region => {
            schema_name: "ineligibleRegion",
            ranges: ["GeoShape", "Place", "Text"],
          }.freeze,
        }.freeze
      end

      def applies_to_delivery_method
        read_property(:applies_to_delivery_method)
      end

      def applies_to_delivery_method=(value)
        write_property(:applies_to_delivery_method, value)
      end

      def area_served
        read_property(:area_served)
      end

      def area_served=(value)
        write_property(:area_served, value)
      end

      def eligible_region
        read_property(:eligible_region)
      end

      def eligible_region=(value)
        write_property(:eligible_region, value)
      end

      def ineligible_region
        read_property(:ineligible_region)
      end

      def ineligible_region=(value)
        write_property(:ineligible_region, value)
      end

    end
  end
end
