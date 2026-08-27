# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module OwnershipInfo
      include StructuredValue

      def self.schema_property_definitions
        {
          acquired_from: {
            schema_name: "acquiredFrom",
            schema_url: "https://schema.org/acquiredFrom",
            comment_lines: ["The organization or person from which the product was acquired."].freeze,
            ranges: ["Organization", "Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          owned_from: {
            schema_name: "ownedFrom",
            schema_url: "https://schema.org/ownedFrom",
            comment_lines: ["The date and time of obtaining the product."].freeze,
            ranges: ["DateTime"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          owned_through: {
            schema_name: "ownedThrough",
            schema_url: "https://schema.org/ownedThrough",
            comment_lines: ["The date and time of giving up ownership on the product."].freeze,
            ranges: ["DateTime"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          type_of_good: {
            schema_name: "typeOfGood",
            schema_url: "https://schema.org/typeOfGood",
            comment_lines: ["The product that this structured value is referring to."].freeze,
            ranges: ["Product", "Service"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The organization or person from which the product was acquired.
      def acquired_from
        read_property(:acquired_from)
      end

      # The organization or person from which the product was acquired.
      def acquired_from=(value)
        write_property(:acquired_from, value)
      end

      # The date and time of obtaining the product.
      def owned_from
        read_property(:owned_from)
      end

      # The date and time of obtaining the product.
      def owned_from=(value)
        write_property(:owned_from, value)
      end

      # The date and time of giving up ownership on the product.
      def owned_through
        read_property(:owned_through)
      end

      # The date and time of giving up ownership on the product.
      def owned_through=(value)
        write_property(:owned_through, value)
      end

      # The product that this structured value is referring to.
      def type_of_good
        read_property(:type_of_good)
      end

      # The product that this structured value is referring to.
      def type_of_good=(value)
        write_property(:type_of_good, value)
      end
    end
  end
end
