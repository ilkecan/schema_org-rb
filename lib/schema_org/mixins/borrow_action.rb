module SchemaOrg
  module Mixins
    module BorrowAction
      include TransferAction

      def self.schema_property_definitions
        {
          :lender => {
            schema_name: "lender",
            ranges: ["Organization", "Person"],
          }.freeze,
        }.freeze
      end

      def lender
        read_property(:lender)
      end

      def lender=(value)
        write_property(:lender, value)
      end

    end
  end
end
