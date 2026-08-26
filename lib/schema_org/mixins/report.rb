module SchemaOrg
  module Mixins
    module Report
      include Article

      def self.schema_property_definitions
        {
          :report_number => {
            schema_name: "reportNumber",
            ranges: ["Text"],
          }.freeze,
        }.freeze
      end

      def report_number
        read_property(:report_number)
      end

      def report_number=(value)
        write_property(:report_number, value)
      end

    end
  end
end
