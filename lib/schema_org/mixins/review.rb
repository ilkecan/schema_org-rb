# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module Review
      include CreativeWork

      def self.schema_property_definitions
        {
          associated_claim_review: {
            schema_name: "associatedClaimReview",
            schema_url: "https://schema.org/associatedClaimReview",
            comment_lines: ["An associated [[ClaimReview]], related by specific common content, topic or claim. The expectation is that this property would be most typically used in cases where a single activity is conducting both claim reviews and media reviews, in which case [[relatedMediaReview]] would commonly be used on a [[ClaimReview]], while [[associatedClaimReview]] would be used on [[MediaReview]]."].freeze,
            ranges: ["Review"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          associated_media_review: {
            schema_name: "associatedMediaReview",
            schema_url: "https://schema.org/associatedMediaReview",
            comment_lines: ["An associated [[MediaReview]], related by specific common content, topic or claim. The expectation is that this property would be most typically used in cases where a single activity is conducting both claim reviews and media reviews, in which case [[relatedMediaReview]] would commonly be used on a [[ClaimReview]], while [[associatedClaimReview]] would be used on [[MediaReview]]."].freeze,
            ranges: ["Review"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          associated_review: {
            schema_name: "associatedReview",
            schema_url: "https://schema.org/associatedReview",
            comment_lines: ["An associated [[Review]]."].freeze,
            ranges: ["Review"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
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
          negative_notes: {
            schema_name: "negativeNotes",
            schema_url: "https://schema.org/negativeNotes",
            comment_lines: ["Provides negative considerations regarding something, most typically in pro/con lists for reviews (alongside [[positiveNotes]]). For symmetry", "", "In the case of a [[Review]], the property describes the [[itemReviewed]] from the perspective of the review; in the case of a [[Product]], the product itself is being described. Since product descriptions", "tend to emphasise positive claims, it may be relatively unusual to find [[negativeNotes]] used in this way. Nevertheless for the sake of symmetry, [[negativeNotes]] can be used on [[Product]].", "", "The property values can be expressed either as unstructured text (repeated as necessary), or if ordered, as a list (in which case the most negative is at the beginning of the list)."].freeze,
            ranges: ["ItemList", "ListItem", "Text", "WebContent"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          positive_notes: {
            schema_name: "positiveNotes",
            schema_url: "https://schema.org/positiveNotes",
            comment_lines: ["Provides positive considerations regarding something, for example product highlights or (alongside [[negativeNotes]]) pro/con lists for reviews.", "", "In the case of a [[Review]], the property describes the [[itemReviewed]] from the perspective of the review; in the case of a [[Product]], the product itself is being described.", "", "The property values can be expressed either as unstructured text (repeated as necessary), or if ordered, as a list (in which case the most positive is at the beginning of the list)."].freeze,
            ranges: ["ItemList", "ListItem", "Text", "WebContent"].freeze,
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
          review_body: {
            schema_name: "reviewBody",
            schema_url: "https://schema.org/reviewBody",
            comment_lines: ["The actual body of the review."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          review_rating: {
            schema_name: "reviewRating",
            schema_url: "https://schema.org/reviewRating",
            comment_lines: ["The rating given in this review. Note that reviews can themselves be rated. The ```reviewRating``` applies to rating given by the review. The [[aggregateRating]] property applies to the review itself, as a creative work."].freeze,
            ranges: ["Rating"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # An associated [[ClaimReview]], related by specific common content, topic or claim. The expectation is that this property would be most typically used in cases where a single activity is conducting both claim reviews and media reviews, in which case [[relatedMediaReview]] would commonly be used on a [[ClaimReview]], while [[associatedClaimReview]] would be used on [[MediaReview]].
      def associated_claim_review
        read_property(:associated_claim_review)
      end

      # An associated [[ClaimReview]], related by specific common content, topic or claim. The expectation is that this property would be most typically used in cases where a single activity is conducting both claim reviews and media reviews, in which case [[relatedMediaReview]] would commonly be used on a [[ClaimReview]], while [[associatedClaimReview]] would be used on [[MediaReview]].
      def associated_claim_review=(value)
        write_property(:associated_claim_review, value)
      end

      # An associated [[MediaReview]], related by specific common content, topic or claim. The expectation is that this property would be most typically used in cases where a single activity is conducting both claim reviews and media reviews, in which case [[relatedMediaReview]] would commonly be used on a [[ClaimReview]], while [[associatedClaimReview]] would be used on [[MediaReview]].
      def associated_media_review
        read_property(:associated_media_review)
      end

      # An associated [[MediaReview]], related by specific common content, topic or claim. The expectation is that this property would be most typically used in cases where a single activity is conducting both claim reviews and media reviews, in which case [[relatedMediaReview]] would commonly be used on a [[ClaimReview]], while [[associatedClaimReview]] would be used on [[MediaReview]].
      def associated_media_review=(value)
        write_property(:associated_media_review, value)
      end

      # An associated [[Review]].
      def associated_review
        read_property(:associated_review)
      end

      # An associated [[Review]].
      def associated_review=(value)
        write_property(:associated_review, value)
      end

      # The item that is being reviewed/rated.
      def item_reviewed
        read_property(:item_reviewed)
      end

      # The item that is being reviewed/rated.
      def item_reviewed=(value)
        write_property(:item_reviewed, value)
      end

      # Provides negative considerations regarding something, most typically in pro/con lists for reviews (alongside [[positiveNotes]]). For symmetry
      #
      # In the case of a [[Review]], the property describes the [[itemReviewed]] from the perspective of the review; in the case of a [[Product]], the product itself is being described. Since product descriptions
      # tend to emphasise positive claims, it may be relatively unusual to find [[negativeNotes]] used in this way. Nevertheless for the sake of symmetry, [[negativeNotes]] can be used on [[Product]].
      #
      # The property values can be expressed either as unstructured text (repeated as necessary), or if ordered, as a list (in which case the most negative is at the beginning of the list).
      def negative_notes
        read_property(:negative_notes)
      end

      # Provides negative considerations regarding something, most typically in pro/con lists for reviews (alongside [[positiveNotes]]). For symmetry
      #
      # In the case of a [[Review]], the property describes the [[itemReviewed]] from the perspective of the review; in the case of a [[Product]], the product itself is being described. Since product descriptions
      # tend to emphasise positive claims, it may be relatively unusual to find [[negativeNotes]] used in this way. Nevertheless for the sake of symmetry, [[negativeNotes]] can be used on [[Product]].
      #
      # The property values can be expressed either as unstructured text (repeated as necessary), or if ordered, as a list (in which case the most negative is at the beginning of the list).
      def negative_notes=(value)
        write_property(:negative_notes, value)
      end

      # Provides positive considerations regarding something, for example product highlights or (alongside [[negativeNotes]]) pro/con lists for reviews.
      #
      # In the case of a [[Review]], the property describes the [[itemReviewed]] from the perspective of the review; in the case of a [[Product]], the product itself is being described.
      #
      # The property values can be expressed either as unstructured text (repeated as necessary), or if ordered, as a list (in which case the most positive is at the beginning of the list).
      def positive_notes
        read_property(:positive_notes)
      end

      # Provides positive considerations regarding something, for example product highlights or (alongside [[negativeNotes]]) pro/con lists for reviews.
      #
      # In the case of a [[Review]], the property describes the [[itemReviewed]] from the perspective of the review; in the case of a [[Product]], the product itself is being described.
      #
      # The property values can be expressed either as unstructured text (repeated as necessary), or if ordered, as a list (in which case the most positive is at the beginning of the list).
      def positive_notes=(value)
        write_property(:positive_notes, value)
      end

      # This Review or Rating is relevant to this part or facet of the itemReviewed.
      def review_aspect
        read_property(:review_aspect)
      end

      # This Review or Rating is relevant to this part or facet of the itemReviewed.
      def review_aspect=(value)
        write_property(:review_aspect, value)
      end

      # The actual body of the review.
      def review_body
        read_property(:review_body)
      end

      # The actual body of the review.
      def review_body=(value)
        write_property(:review_body, value)
      end

      # The rating given in this review. Note that reviews can themselves be rated. The ```reviewRating``` applies to rating given by the review. The [[aggregateRating]] property applies to the review itself, as a creative work.
      def review_rating
        read_property(:review_rating)
      end

      # The rating given in this review. Note that reviews can themselves be rated. The ```reviewRating``` applies to rating given by the review. The [[aggregateRating]] property applies to the review itself, as a creative work.
      def review_rating=(value)
        write_property(:review_rating, value)
      end
    end
  end
end
