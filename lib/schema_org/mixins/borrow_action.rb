# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module BorrowAction
      include TransferAction

      def self.schema_property_definitions
        {
          lender: {
            schema_name: "lender",
            schema_url: "https://schema.org/lender",
            comment_lines: ["A sub property of participant. The person that lends the object being borrowed."].freeze,
            ranges: ["Organization", "Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # A sub property of participant. The person that lends the object being borrowed.
      def lender
        read_property(:lender)
      end

      # A sub property of participant. The person that lends the object being borrowed.
      def lender=(value)
        write_property(:lender, value)
      end
    end
  end
end
