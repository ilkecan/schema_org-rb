module SchemaOrg
  module Mixins
    module LocationFeatureSpecification
      include PropertyValue

      def self.schema_property_definitions
        {
          :hours_available => {
            schema_name: "hoursAvailable",
            ranges: ["OpeningHoursSpecification"],
          }.freeze,
          :valid_from => {
            schema_name: "validFrom",
            ranges: ["Date", "DateTime"],
          }.freeze,
          :valid_through => {
            schema_name: "validThrough",
            ranges: ["Date", "DateTime"],
          }.freeze,
        }.freeze
      end

      def hours_available
        read_property(:hours_available)
      end

      def hours_available=(value)
        write_property(:hours_available, value)
      end

      def valid_from
        read_property(:valid_from)
      end

      def valid_from=(value)
        write_property(:valid_from, value)
      end

      def valid_through
        read_property(:valid_through)
      end

      def valid_through=(value)
        write_property(:valid_through, value)
      end

    end
  end
end
