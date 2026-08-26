module SchemaOrg
  module Mixins
    module GovernmentService
      include Service

      def self.schema_property_definitions
        {
          :service_operator => {
            schema_name: "serviceOperator",
            ranges: ["Organization"],
          }.freeze,
        }.freeze
      end

      def service_operator
        read_property(:service_operator)
      end

      def service_operator=(value)
        write_property(:service_operator, value)
      end

    end
  end
end
