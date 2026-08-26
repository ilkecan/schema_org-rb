# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module ReviewAction
      include AssessAction

      def self.schema_property_definitions
        {
          result_review: {
            schema_name: "resultReview",
            schema_url: "https://schema.org/resultReview",
            comment_lines: ["A sub property of result. The review that resulted in the performing of the action."].freeze,
            ranges: ["Review"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # A sub property of result. The review that resulted in the performing of the action.
      def result_review
        read_property(:result_review)
      end

      # A sub property of result. The review that resulted in the performing of the action.
      def result_review=(value)
        write_property(:result_review, value)
      end
    end
  end
end
