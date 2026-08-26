module SchemaOrg
  module Mixins
    module ActionAccessSpecification
      include Intangible

      def self.schema_property_definitions
        {
          :availability_ends => {
            schema_name: "availabilityEnds",
            ranges: ["Date", "DateTime", "Time"],
          }.freeze,
          :availability_starts => {
            schema_name: "availabilityStarts",
            ranges: ["Date", "DateTime", "Time"],
          }.freeze,
          :category => {
            schema_name: "category",
            ranges: ["Text", "Thing"],
          }.freeze,
          :eligible_region => {
            schema_name: "eligibleRegion",
            ranges: ["GeoShape", "Place", "Text"],
          }.freeze,
          :expects_acceptance_of => {
            schema_name: "expectsAcceptanceOf",
            ranges: ["Offer"],
          }.freeze,
          :requires_subscription => {
            schema_name: "requiresSubscription",
            ranges: ["Boolean", "MediaSubscription"],
          }.freeze,
        }.freeze
      end

      def availability_ends
        read_property(:availability_ends)
      end

      def availability_ends=(value)
        write_property(:availability_ends, value)
      end

      def availability_starts
        read_property(:availability_starts)
      end

      def availability_starts=(value)
        write_property(:availability_starts, value)
      end

      def category
        read_property(:category)
      end

      def category=(value)
        write_property(:category, value)
      end

      def eligible_region
        read_property(:eligible_region)
      end

      def eligible_region=(value)
        write_property(:eligible_region, value)
      end

      def expects_acceptance_of
        read_property(:expects_acceptance_of)
      end

      def expects_acceptance_of=(value)
        write_property(:expects_acceptance_of, value)
      end

      def requires_subscription
        read_property(:requires_subscription)
      end

      def requires_subscription=(value)
        write_property(:requires_subscription, value)
      end

    end
  end
end
