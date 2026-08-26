module SchemaOrg
  module Mixins
    module FinancialService
      include LocalBusiness

      def self.schema_property_definitions
        {
          :fees_and_commissions_specification => {
            schema_name: "feesAndCommissionsSpecification",
            ranges: ["Text", "URL"],
          }.freeze,
        }.freeze
      end

      def fees_and_commissions_specification
        read_property(:fees_and_commissions_specification)
      end

      def fees_and_commissions_specification=(value)
        write_property(:fees_and_commissions_specification, value)
      end

    end
  end
end
