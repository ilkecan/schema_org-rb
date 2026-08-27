# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module MonetaryGrant
      include Grant

      def self.schema_property_definitions
        {
          amount: {
            schema_name: "amount",
            schema_url: "https://schema.org/amount",
            comment_lines: ["The amount of money."].freeze,
            ranges: ["MonetaryAmount", "Number"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          funder: {
            schema_name: "funder",
            schema_url: "https://schema.org/funder",
            comment_lines: ["A person or organization that supports (sponsors) something through some kind of financial contribution."].freeze,
            ranges: ["Organization", "Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The amount of money.
      def amount
        read_property(:amount)
      end

      # The amount of money.
      def amount=(value)
        write_property(:amount, value)
      end

      # A person or organization that supports (sponsors) something through some kind of financial contribution.
      def funder
        read_property(:funder)
      end

      # A person or organization that supports (sponsors) something through some kind of financial contribution.
      def funder=(value)
        write_property(:funder, value)
      end
    end
  end
end
