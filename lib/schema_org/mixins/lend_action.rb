module SchemaOrg
  module Mixins
    module LendAction
      include TransferAction

      def self.schema_property_definitions
        {
          :borrower => {
            schema_name: "borrower",
            ranges: ["Person"],
          }.freeze,
        }.freeze
      end

      def borrower
        read_property(:borrower)
      end

      def borrower=(value)
        write_property(:borrower, value)
      end

    end
  end
end
