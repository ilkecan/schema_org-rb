# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module Brand
      include Intangible

      def self.schema_property_definitions
        {
          aggregate_rating: {
            schema_name: "aggregateRating",
            schema_url: "https://schema.org/aggregateRating",
            comment_lines: ["The overall rating, based on a collection of reviews or ratings, of the item."].freeze,
            ranges: ["AggregateRating"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          logo: {
            schema_name: "logo",
            schema_url: "https://schema.org/logo",
            comment_lines: ["An associated logo."].freeze,
            ranges: ["ImageObject", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          review: {
            schema_name: "review",
            schema_url: "https://schema.org/review",
            comment_lines: ["A review of the item."].freeze,
            ranges: ["Review"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: ["reviews"].freeze
          }.freeze,
          slogan: {
            schema_name: "slogan",
            schema_url: "https://schema.org/slogan",
            comment_lines: ["A slogan or motto associated with the item."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The overall rating, based on a collection of reviews or ratings, of the item.
      def aggregate_rating
        read_property(:aggregate_rating)
      end

      # The overall rating, based on a collection of reviews or ratings, of the item.
      def aggregate_rating=(value)
        write_property(:aggregate_rating, value)
      end

      # An associated logo.
      def logo
        read_property(:logo)
      end

      # An associated logo.
      def logo=(value)
        write_property(:logo, value)
      end

      # A review of the item.
      # Supersedes `reviews`.
      def review
        read_property(:review)
      end

      # A review of the item.
      # Supersedes `reviews`.
      def review=(value)
        write_property(:review, value)
      end

      # A slogan or motto associated with the item.
      def slogan
        read_property(:slogan)
      end

      # A slogan or motto associated with the item.
      def slogan=(value)
        write_property(:slogan, value)
      end
    end
  end
end
