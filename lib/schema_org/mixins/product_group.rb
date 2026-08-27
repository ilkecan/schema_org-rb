# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module ProductGroup
      include Product

      def self.schema_property_definitions
        {
          has_variant: {
            schema_name: "hasVariant",
            schema_url: "https://schema.org/hasVariant",
            comment_lines: ["Indicates a [[Product]] that is a member of this [[ProductGroup]] (or [[ProductModel]])."].freeze,
            ranges: ["Product"].freeze,
            external_ranges: [].freeze,
            inverse_of: "isVariantOf",
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          product_group_id: {
            schema_name: "productGroupID",
            schema_url: "https://schema.org/productGroupID",
            comment_lines: ["Indicates a textual identifier for a ProductGroup."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          varies_by: {
            schema_name: "variesBy",
            schema_url: "https://schema.org/variesBy",
            comment_lines: ["Indicates the property or properties by which the variants in a [[ProductGroup]] vary, e.g. their size, color etc. Schema.org properties can be referenced by their short name e.g. \"color\"; terms defined elsewhere can be referenced with their URIs."].freeze,
            ranges: ["DefinedTerm", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # Indicates a [[Product]] that is a member of this [[ProductGroup]] (or [[ProductModel]]).
      # Inverse-property: `isVariantOf`.
      def has_variant
        read_property(:has_variant)
      end

      # Indicates a [[Product]] that is a member of this [[ProductGroup]] (or [[ProductModel]]).
      # Inverse-property: `isVariantOf`.
      def has_variant=(value)
        write_property(:has_variant, value)
      end

      # Indicates a textual identifier for a ProductGroup.
      def product_group_id
        read_property(:product_group_id)
      end

      # Indicates a textual identifier for a ProductGroup.
      def product_group_id=(value)
        write_property(:product_group_id, value)
      end

      # Indicates the property or properties by which the variants in a [[ProductGroup]] vary, e.g. their size, color etc. Schema.org properties can be referenced by their short name e.g. "color"; terms defined elsewhere can be referenced with their URIs.
      def varies_by
        read_property(:varies_by)
      end

      # Indicates the property or properties by which the variants in a [[ProductGroup]] vary, e.g. their size, color etc. Schema.org properties can be referenced by their short name e.g. "color"; terms defined elsewhere can be referenced with their URIs.
      def varies_by=(value)
        write_property(:varies_by, value)
      end
    end
  end
end
