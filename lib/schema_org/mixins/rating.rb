# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module Rating
      include Intangible

      def self.schema_property_definitions
        {
          author: {
            schema_name: "author",
            schema_url: "https://schema.org/author",
            comment_lines: ["The author of this content or rating. Please note that author is special in that HTML 5 provides a special mechanism for indicating authorship via the rel tag. That is equivalent to this and may be used interchangeably."].freeze,
            ranges: ["Organization", "Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          best_rating: {
            schema_name: "bestRating",
            schema_url: "https://schema.org/bestRating",
            comment_lines: ["The highest value allowed in this rating system."].freeze,
            ranges: ["Number", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          rating_explanation: {
            schema_name: "ratingExplanation",
            schema_url: "https://schema.org/ratingExplanation",
            comment_lines: ["A short explanation (e.g. one to two sentences) providing background context and other information that led to the conclusion expressed in the rating. This is particularly applicable to ratings associated with \"fact check\" markup using [[ClaimReview]]."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          rating_value: {
            schema_name: "ratingValue",
            schema_url: "https://schema.org/ratingValue",
            comment_lines: ["The rating for the content.\\n\\nUsage guidelines:\\n\\n* Use values from 0123456789 (Unicode 'DIGIT ZERO' (U+0030) to 'DIGIT NINE' (U+0039)) rather than superficially similar Unicode symbols.\\n* Use '.' (Unicode 'FULL STOP' (U+002E)) rather than ',' to indicate a decimal point. Avoid using these symbols as a readability separator."].freeze,
            ranges: ["Number", "Text"].freeze,
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
          }.freeze,
          worst_rating: {
            schema_name: "worstRating",
            schema_url: "https://schema.org/worstRating",
            comment_lines: ["The lowest value allowed in this rating system."].freeze,
            ranges: ["Number", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The author of this content or rating. Please note that author is special in that HTML 5 provides a special mechanism for indicating authorship via the rel tag. That is equivalent to this and may be used interchangeably.
      def author
        read_property(:author)
      end

      # The author of this content or rating. Please note that author is special in that HTML 5 provides a special mechanism for indicating authorship via the rel tag. That is equivalent to this and may be used interchangeably.
      def author=(value)
        write_property(:author, value)
      end

      # The highest value allowed in this rating system.
      def best_rating
        read_property(:best_rating)
      end

      # The highest value allowed in this rating system.
      def best_rating=(value)
        write_property(:best_rating, value)
      end

      # A short explanation (e.g. one to two sentences) providing background context and other information that led to the conclusion expressed in the rating. This is particularly applicable to ratings associated with "fact check" markup using [[ClaimReview]].
      def rating_explanation
        read_property(:rating_explanation)
      end

      # A short explanation (e.g. one to two sentences) providing background context and other information that led to the conclusion expressed in the rating. This is particularly applicable to ratings associated with "fact check" markup using [[ClaimReview]].
      def rating_explanation=(value)
        write_property(:rating_explanation, value)
      end

      # The rating for the content.\n\nUsage guidelines:\n\n* Use values from 0123456789 (Unicode 'DIGIT ZERO' (U+0030) to 'DIGIT NINE' (U+0039)) rather than superficially similar Unicode symbols.\n* Use '.' (Unicode 'FULL STOP' (U+002E)) rather than ',' to indicate a decimal point. Avoid using these symbols as a readability separator.
      def rating_value
        read_property(:rating_value)
      end

      # The rating for the content.\n\nUsage guidelines:\n\n* Use values from 0123456789 (Unicode 'DIGIT ZERO' (U+0030) to 'DIGIT NINE' (U+0039)) rather than superficially similar Unicode symbols.\n* Use '.' (Unicode 'FULL STOP' (U+002E)) rather than ',' to indicate a decimal point. Avoid using these symbols as a readability separator.
      def rating_value=(value)
        write_property(:rating_value, value)
      end

      # This Review or Rating is relevant to this part or facet of the itemReviewed.
      def review_aspect
        read_property(:review_aspect)
      end

      # This Review or Rating is relevant to this part or facet of the itemReviewed.
      def review_aspect=(value)
        write_property(:review_aspect, value)
      end

      # The lowest value allowed in this rating system.
      def worst_rating
        read_property(:worst_rating)
      end

      # The lowest value allowed in this rating system.
      def worst_rating=(value)
        write_property(:worst_rating, value)
      end
    end
  end
end
