# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module PostalCodeRangeSpecification
      include StructuredValue

      def self.schema_property_definitions
        {
          postal_code_begin: {
            schema_name: "postalCodeBegin",
            schema_url: "https://schema.org/postalCodeBegin",
            comment_lines: ["First postal code in a range (included)."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          postal_code_end: {
            schema_name: "postalCodeEnd",
            schema_url: "https://schema.org/postalCodeEnd",
            comment_lines: ["Last postal code in the range (included). Needs to be after [[postalCodeBegin]]."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # First postal code in a range (included).
      def postal_code_begin
        read_property(:postal_code_begin)
      end

      # First postal code in a range (included).
      def postal_code_begin=(value)
        write_property(:postal_code_begin, value)
      end

      # Last postal code in the range (included). Needs to be after [[postalCodeBegin]].
      def postal_code_end
        read_property(:postal_code_end)
      end

      # Last postal code in the range (included). Needs to be after [[postalCodeBegin]].
      def postal_code_end=(value)
        write_property(:postal_code_end, value)
      end
    end
  end
end
