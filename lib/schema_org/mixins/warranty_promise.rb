# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module WarrantyPromise
      include StructuredValue

      def self.schema_property_definitions
        {
          duration_of_warranty: {
            schema_name: "durationOfWarranty",
            schema_url: "https://schema.org/durationOfWarranty",
            comment_lines: ["The duration of the warranty promise. Common unitCode values are ANN for year, MON for months, or DAY for days."].freeze,
            ranges: ["QuantitativeValue"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          warranty_scope: {
            schema_name: "warrantyScope",
            schema_url: "https://schema.org/warrantyScope",
            comment_lines: ["The scope of the warranty promise."].freeze,
            ranges: ["WarrantyScope"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The duration of the warranty promise. Common unitCode values are ANN for year, MON for months, or DAY for days.
      def duration_of_warranty
        read_property(:duration_of_warranty)
      end

      # The duration of the warranty promise. Common unitCode values are ANN for year, MON for months, or DAY for days.
      def duration_of_warranty=(value)
        write_property(:duration_of_warranty, value)
      end

      # The scope of the warranty promise.
      def warranty_scope
        read_property(:warranty_scope)
      end

      # The scope of the warranty promise.
      def warranty_scope=(value)
        write_property(:warranty_scope, value)
      end
    end
  end
end
