# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module LendAction
      include TransferAction

      def self.schema_property_definitions
        {
          borrower: {
            schema_name: "borrower",
            schema_url: "https://schema.org/borrower",
            comment_lines: ["A sub property of participant. The person that borrows the object being lent."].freeze,
            ranges: ["Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # A sub property of participant. The person that borrows the object being lent.
      def borrower
        read_property(:borrower)
      end

      # A sub property of participant. The person that borrows the object being lent.
      def borrower=(value)
        write_property(:borrower, value)
      end
    end
  end
end
