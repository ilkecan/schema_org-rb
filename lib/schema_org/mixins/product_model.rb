# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module ProductModel
      include Product

      def self.schema_property_definitions
        {
          is_variant_of: {
            schema_name: "isVariantOf",
            schema_url: "https://schema.org/isVariantOf",
            comment_lines: ["Indicates the kind of product that this is a variant of. In the case of [[ProductModel]], this is a pointer (from a ProductModel) to a base product from which this product is a variant. It is safe to infer that the variant inherits all product features from the base model, unless defined locally. This is not transitive. In the case of a [[ProductGroup]], the group description also serves as a template, representing a set of Products that vary on explicitly defined, specific dimensions only (so it defines both a set of variants, as well as which values distinguish amongst those variants). When used with [[ProductGroup]], this property can apply to any [[Product]] included in the group."].freeze,
            ranges: ["ProductGroup", "ProductModel"].freeze,
            external_ranges: [].freeze,
            inverse_of: "hasVariant",
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          predecessor_of: {
            schema_name: "predecessorOf",
            schema_url: "https://schema.org/predecessorOf",
            comment_lines: ["A pointer from a previous, often discontinued variant of the product to its newer variant."].freeze,
            ranges: ["ProductModel"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          successor_of: {
            schema_name: "successorOf",
            schema_url: "https://schema.org/successorOf",
            comment_lines: ["A pointer from a newer variant of a product  to its previous, often discontinued predecessor."].freeze,
            ranges: ["ProductModel"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # Indicates the kind of product that this is a variant of. In the case of [[ProductModel]], this is a pointer (from a ProductModel) to a base product from which this product is a variant. It is safe to infer that the variant inherits all product features from the base model, unless defined locally. This is not transitive. In the case of a [[ProductGroup]], the group description also serves as a template, representing a set of Products that vary on explicitly defined, specific dimensions only (so it defines both a set of variants, as well as which values distinguish amongst those variants). When used with [[ProductGroup]], this property can apply to any [[Product]] included in the group.
      # Inverse-property: `hasVariant`.
      def is_variant_of
        read_property(:is_variant_of)
      end

      # Indicates the kind of product that this is a variant of. In the case of [[ProductModel]], this is a pointer (from a ProductModel) to a base product from which this product is a variant. It is safe to infer that the variant inherits all product features from the base model, unless defined locally. This is not transitive. In the case of a [[ProductGroup]], the group description also serves as a template, representing a set of Products that vary on explicitly defined, specific dimensions only (so it defines both a set of variants, as well as which values distinguish amongst those variants). When used with [[ProductGroup]], this property can apply to any [[Product]] included in the group.
      # Inverse-property: `hasVariant`.
      def is_variant_of=(value)
        write_property(:is_variant_of, value)
      end

      # A pointer from a previous, often discontinued variant of the product to its newer variant.
      def predecessor_of
        read_property(:predecessor_of)
      end

      # A pointer from a previous, often discontinued variant of the product to its newer variant.
      def predecessor_of=(value)
        write_property(:predecessor_of, value)
      end

      # A pointer from a newer variant of a product  to its previous, often discontinued predecessor.
      def successor_of
        read_property(:successor_of)
      end

      # A pointer from a newer variant of a product  to its previous, often discontinued predecessor.
      def successor_of=(value)
        write_property(:successor_of, value)
      end
    end
  end
end
