# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module ActionAccessSpecification
      include Intangible

      def self.schema_property_definitions
        {
          availability_ends: {
            schema_name: "availabilityEnds",
            schema_url: "https://schema.org/availabilityEnds",
            comment_lines: ["The end of the availability of the product or service included in the offer."].freeze,
            ranges: ["Date", "DateTime", "Time"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          availability_starts: {
            schema_name: "availabilityStarts",
            schema_url: "https://schema.org/availabilityStarts",
            comment_lines: ["The beginning of the availability of the product or service included in the offer."].freeze,
            ranges: ["Date", "DateTime", "Time"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
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
          eligible_region: {
            schema_name: "eligibleRegion",
            schema_url: "https://schema.org/eligibleRegion",
            comment_lines: ["The ISO 3166-1 (ISO 3166-1 alpha-2) or ISO 3166-2 code, the place, or the GeoShape for the geo-political region(s) for which the offer or delivery charge specification is valid.\\n\\nSee also [[ineligibleRegion]]."].freeze,
            ranges: ["GeoShape", "Place", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          expects_acceptance_of: {
            schema_name: "expectsAcceptanceOf",
            schema_url: "https://schema.org/expectsAcceptanceOf",
            comment_lines: ["An Offer which must be accepted before the user can perform the Action. For example, the user may need to buy a movie before being able to watch it."].freeze,
            ranges: ["Offer"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          ineligible_region: {
            schema_name: "ineligibleRegion",
            schema_url: "https://schema.org/ineligibleRegion",
            comment_lines: ["The ISO 3166-1 (ISO 3166-1 alpha-2) or ISO 3166-2 code, the place, or the GeoShape for the geo-political region(s) for which the offer or delivery charge specification is not valid, e.g. a region where the transaction is not allowed.\\n\\nSee also [[eligibleRegion]]."].freeze,
            ranges: ["GeoShape", "Place", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          requires_subscription: {
            schema_name: "requiresSubscription",
            schema_url: "https://schema.org/requiresSubscription",
            comment_lines: ["Indicates if use of the media require a subscription  (either paid or free). Allowed values are ```true``` or ```false``` (note that an earlier version had 'yes', 'no')."].freeze,
            ranges: ["Boolean", "MediaSubscription"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The end of the availability of the product or service included in the offer.
      def availability_ends
        read_property(:availability_ends)
      end

      # The end of the availability of the product or service included in the offer.
      def availability_ends=(value)
        write_property(:availability_ends, value)
      end

      # The beginning of the availability of the product or service included in the offer.
      def availability_starts
        read_property(:availability_starts)
      end

      # The beginning of the availability of the product or service included in the offer.
      def availability_starts=(value)
        write_property(:availability_starts, value)
      end

      # A category for the item. Greater signs or slashes can be used to informally indicate a category hierarchy.
      def category
        read_property(:category)
      end

      # A category for the item. Greater signs or slashes can be used to informally indicate a category hierarchy.
      def category=(value)
        write_property(:category, value)
      end

      # The ISO 3166-1 (ISO 3166-1 alpha-2) or ISO 3166-2 code, the place, or the GeoShape for the geo-political region(s) for which the offer or delivery charge specification is valid.\n\nSee also [[ineligibleRegion]].
      def eligible_region
        read_property(:eligible_region)
      end

      # The ISO 3166-1 (ISO 3166-1 alpha-2) or ISO 3166-2 code, the place, or the GeoShape for the geo-political region(s) for which the offer or delivery charge specification is valid.\n\nSee also [[ineligibleRegion]].
      def eligible_region=(value)
        write_property(:eligible_region, value)
      end

      # An Offer which must be accepted before the user can perform the Action. For example, the user may need to buy a movie before being able to watch it.
      def expects_acceptance_of
        read_property(:expects_acceptance_of)
      end

      # An Offer which must be accepted before the user can perform the Action. For example, the user may need to buy a movie before being able to watch it.
      def expects_acceptance_of=(value)
        write_property(:expects_acceptance_of, value)
      end

      # The ISO 3166-1 (ISO 3166-1 alpha-2) or ISO 3166-2 code, the place, or the GeoShape for the geo-political region(s) for which the offer or delivery charge specification is not valid, e.g. a region where the transaction is not allowed.\n\nSee also [[eligibleRegion]].
      def ineligible_region
        read_property(:ineligible_region)
      end

      # The ISO 3166-1 (ISO 3166-1 alpha-2) or ISO 3166-2 code, the place, or the GeoShape for the geo-political region(s) for which the offer or delivery charge specification is not valid, e.g. a region where the transaction is not allowed.\n\nSee also [[eligibleRegion]].
      def ineligible_region=(value)
        write_property(:ineligible_region, value)
      end

      # Indicates if use of the media require a subscription  (either paid or free). Allowed values are ```true``` or ```false``` (note that an earlier version had 'yes', 'no').
      def requires_subscription
        read_property(:requires_subscription)
      end

      # Indicates if use of the media require a subscription  (either paid or free). Allowed values are ```true``` or ```false``` (note that an earlier version had 'yes', 'no').
      def requires_subscription=(value)
        write_property(:requires_subscription, value)
      end
    end
  end
end
