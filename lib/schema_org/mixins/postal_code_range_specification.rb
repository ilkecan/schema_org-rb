module SchemaOrg
  module Mixins
    module PostalCodeRangeSpecification
      include StructuredValue

      def self.schema_property_definitions
        {
          :postal_code_begin => {
            schema_name: "postalCodeBegin",
            ranges: ["Text"],
          }.freeze,
          :postal_code_end => {
            schema_name: "postalCodeEnd",
            ranges: ["Text"],
          }.freeze,
        }.freeze
      end

      def postal_code_begin
        read_property(:postal_code_begin)
      end

      def postal_code_begin=(value)
        write_property(:postal_code_begin, value)
      end

      def postal_code_end
        read_property(:postal_code_end)
      end

      def postal_code_end=(value)
        write_property(:postal_code_end, value)
      end

    end
  end
end
