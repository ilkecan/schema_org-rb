# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module HowToSupply
      include HowToItem

      def self.schema_property_definitions
        {
          estimated_cost: {
            schema_name: "estimatedCost",
            schema_url: "https://schema.org/estimatedCost",
            comment_lines: ["The estimated cost of the supply or supplies consumed when performing instructions."].freeze,
            ranges: ["MonetaryAmount", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The estimated cost of the supply or supplies consumed when performing instructions.
      def estimated_cost
        read_property(:estimated_cost)
      end

      # The estimated cost of the supply or supplies consumed when performing instructions.
      def estimated_cost=(value)
        write_property(:estimated_cost, value)
      end
    end
  end
end
