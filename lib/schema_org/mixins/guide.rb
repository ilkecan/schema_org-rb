# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module Guide
      include CreativeWork

      def self.schema_property_definitions
        {
          category: {
            schema_name: "category",
            schema_url: "https://schema.org/category",
            comment_lines: ["A category for the item. Greater signs or slashes can be used to informally indicate a category hierarchy."].freeze,
            ranges: ["CategoryCode", "PhysicalActivityCategory", "Text", "Thing", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          review_aspect: {
            schema_name: "reviewAspect",
            schema_url: "https://schema.org/reviewAspect",
            comment_lines: ["This Review or Rating is relevant to this part or facet of the itemReviewed."].freeze,
            ranges: ["StructuredValue", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # A category for the item. Greater signs or slashes can be used to informally indicate a category hierarchy.
      def category
        read_property(:category)
      end

      # A category for the item. Greater signs or slashes can be used to informally indicate a category hierarchy.
      def category=(value)
        write_property(:category, value)
      end

      # This Review or Rating is relevant to this part or facet of the itemReviewed.
      def review_aspect
        read_property(:review_aspect)
      end

      # This Review or Rating is relevant to this part or facet of the itemReviewed.
      def review_aspect=(value)
        write_property(:review_aspect, value)
      end
    end
  end
end
