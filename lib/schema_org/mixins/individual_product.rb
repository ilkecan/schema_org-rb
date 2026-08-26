module SchemaOrg
  module Mixins
    module IndividualProduct
      include Product

      def self.schema_property_definitions
        {
          :serial_number => {
            schema_name: "serialNumber",
            ranges: ["Text"],
          }.freeze,
        }.freeze
      end

      def serial_number
        read_property(:serial_number)
      end

      def serial_number=(value)
        write_property(:serial_number, value)
      end

    end
  end
end
