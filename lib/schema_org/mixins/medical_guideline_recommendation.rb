# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module MedicalGuidelineRecommendation
      include MedicalGuideline

      def self.schema_property_definitions
        {
          recommendation_strength: {
            schema_name: "recommendationStrength",
            schema_url: "https://schema.org/recommendationStrength",
            comment_lines: ["Strength of the guideline's recommendation (e.g. 'class I')."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # Strength of the guideline's recommendation (e.g. 'class I').
      def recommendation_strength
        read_property(:recommendation_strength)
      end

      # Strength of the guideline's recommendation (e.g. 'class I').
      def recommendation_strength=(value)
        write_property(:recommendation_strength, value)
      end
    end
  end
end
