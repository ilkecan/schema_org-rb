# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module IndividualProduct
      include Product

      def self.schema_property_definitions
        {
          serial_number: {
            schema_name: "serialNumber",
            schema_url: "https://schema.org/serialNumber",
            comment_lines: ["The serial number or any alphanumeric identifier of a particular product. When attached to an offer, it is a shortcut for the serial number of the product included in the offer."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The serial number or any alphanumeric identifier of a particular product. When attached to an offer, it is a shortcut for the serial number of the product included in the offer.
      def serial_number
        read_property(:serial_number)
      end

      # The serial number or any alphanumeric identifier of a particular product. When attached to an offer, it is a shortcut for the serial number of the product included in the offer.
      def serial_number=(value)
        write_property(:serial_number, value)
      end
    end
  end
end
