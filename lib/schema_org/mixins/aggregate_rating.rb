# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module AggregateRating
      include Rating

      def self.schema_property_definitions
        {
          item_reviewed: {
            schema_name: "itemReviewed",
            schema_url: "https://schema.org/itemReviewed",
            comment_lines: ["The item that is being reviewed/rated."].freeze,
            ranges: ["Thing"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          rating_count: {
            schema_name: "ratingCount",
            schema_url: "https://schema.org/ratingCount",
            comment_lines: ["The count of total number of ratings."].freeze,
            ranges: ["Integer"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          review_count: {
            schema_name: "reviewCount",
            schema_url: "https://schema.org/reviewCount",
            comment_lines: ["The count of total number of reviews."].freeze,
            ranges: ["Integer"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The item that is being reviewed/rated.
      def item_reviewed
        read_property(:item_reviewed)
      end

      # The item that is being reviewed/rated.
      def item_reviewed=(value)
        write_property(:item_reviewed, value)
      end

      # The count of total number of ratings.
      def rating_count
        read_property(:rating_count)
      end

      # The count of total number of ratings.
      def rating_count=(value)
        write_property(:rating_count, value)
      end

      # The count of total number of reviews.
      def review_count
        read_property(:review_count)
      end

      # The count of total number of reviews.
      def review_count=(value)
        write_property(:review_count, value)
      end
    end
  end
end
