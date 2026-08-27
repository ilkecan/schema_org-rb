# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module SomeProducts
      include Product

      def self.schema_property_definitions
        {
          inventory_level: {
            schema_name: "inventoryLevel",
            schema_url: "https://schema.org/inventoryLevel",
            comment_lines: ["The current approximate inventory level for the item or items."].freeze,
            ranges: ["QuantitativeValue"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The current approximate inventory level for the item or items.
      def inventory_level
        read_property(:inventory_level)
      end

      # The current approximate inventory level for the item or items.
      def inventory_level=(value)
        write_property(:inventory_level, value)
      end
    end
  end
end
