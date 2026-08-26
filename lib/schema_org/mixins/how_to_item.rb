# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module HowToItem
      include ListItem

      def self.schema_property_definitions
        {
          required_quantity: {
            schema_name: "requiredQuantity",
            schema_url: "https://schema.org/requiredQuantity",
            comment_lines: ["The required quantity of the item(s)."].freeze,
            ranges: ["Number", "QuantitativeValue", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The required quantity of the item(s).
      def required_quantity
        read_property(:required_quantity)
      end

      # The required quantity of the item(s).
      def required_quantity=(value)
        write_property(:required_quantity, value)
      end
    end
  end
end
