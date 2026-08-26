module SchemaOrg
  module Mixins
    module EngineSpecification
      include StructuredValue

      def self.schema_property_definitions
        {
          :fuel_type => {
            schema_name: "fuelType",
            ranges: ["QualitativeValue", "Text", "URL"],
          }.freeze,
        }.freeze
      end

      def fuel_type
        read_property(:fuel_type)
      end

      def fuel_type=(value)
        write_property(:fuel_type, value)
      end

    end
  end
end
