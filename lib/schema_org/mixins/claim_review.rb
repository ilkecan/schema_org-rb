# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module ClaimReview
      include Review

      def self.schema_property_definitions
        {
          claim_reviewed: {
            schema_name: "claimReviewed",
            schema_url: "https://schema.org/claimReviewed",
            comment_lines: ["A short summary of the specific claims reviewed in a ClaimReview."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # A short summary of the specific claims reviewed in a ClaimReview.
      def claim_reviewed
        read_property(:claim_reviewed)
      end

      # A short summary of the specific claims reviewed in a ClaimReview.
      def claim_reviewed=(value)
        write_property(:claim_reviewed, value)
      end
    end
  end
end
