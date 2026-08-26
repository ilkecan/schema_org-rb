module SchemaOrg
  module Mixins
    module Audience
      include Intangible

      def self.schema_property_definitions
        {
          :audience_type => {
            schema_name: "audienceType",
            ranges: ["Text"],
          }.freeze,
          :geographic_area => {
            schema_name: "geographicArea",
            ranges: ["AdministrativeArea"],
          }.freeze,
        }.freeze
      end

      def audience_type
        read_property(:audience_type)
      end

      def audience_type=(value)
        write_property(:audience_type, value)
      end

      def geographic_area
        read_property(:geographic_area)
      end

      def geographic_area=(value)
        write_property(:geographic_area, value)
      end

    end
  end
end
