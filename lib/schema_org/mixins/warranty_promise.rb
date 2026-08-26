module SchemaOrg
  module Mixins
    module WarrantyPromise
      include StructuredValue

      def self.schema_property_definitions
        {
          :duration_of_warranty => {
            schema_name: "durationOfWarranty",
            ranges: ["QuantitativeValue"],
          }.freeze,
          :warranty_scope => {
            schema_name: "warrantyScope",
            ranges: ["WarrantyScope"],
          }.freeze,
        }.freeze
      end

      def duration_of_warranty
        read_property(:duration_of_warranty)
      end

      def duration_of_warranty=(value)
        write_property(:duration_of_warranty, value)
      end

      def warranty_scope
        read_property(:warranty_scope)
      end

      def warranty_scope=(value)
        write_property(:warranty_scope, value)
      end

    end
  end
end
