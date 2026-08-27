# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module SellAction
      include TradeAction

      def self.schema_property_definitions
        {
          buyer: {
            schema_name: "buyer",
            schema_url: "https://schema.org/buyer",
            comment_lines: ["A sub property of participant. The participant/person/organization that bought the object."].freeze,
            ranges: ["Organization", "Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          warranty_promise: {
            schema_name: "warrantyPromise",
            schema_url: "https://schema.org/warrantyPromise",
            comment_lines: ["The warranty promise(s) included in the offer."].freeze,
            ranges: ["WarrantyPromise"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: "warranty",
            supersedes: nil
          }.freeze
        }.freeze
      end

      # A sub property of participant. The participant/person/organization that bought the object.
      def buyer
        read_property(:buyer)
      end

      # A sub property of participant. The participant/person/organization that bought the object.
      def buyer=(value)
        write_property(:buyer, value)
      end

      # The warranty promise(s) included in the offer.
      # Superseded by `warranty`.
      def warranty_promise
        read_property(:warranty_promise)
      end

      # The warranty promise(s) included in the offer.
      # Superseded by `warranty`.
      def warranty_promise=(value)
        write_property(:warranty_promise, value)
      end
    end
  end
end
