module SchemaOrg
  module Mixins
    module MobileApplication
      include SoftwareApplication

      def self.schema_property_definitions
        {
          :carrier_requirements => {
            schema_name: "carrierRequirements",
            ranges: ["Text"],
          }.freeze,
        }.freeze
      end

      def carrier_requirements
        read_property(:carrier_requirements)
      end

      def carrier_requirements=(value)
        write_property(:carrier_requirements, value)
      end

    end
  end
end
