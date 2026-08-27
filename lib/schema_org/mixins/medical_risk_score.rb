# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module MedicalRiskScore
      include MedicalRiskEstimator

      def self.schema_property_definitions
        {
          algorithm: {
            schema_name: "algorithm",
            schema_url: "https://schema.org/algorithm",
            comment_lines: ["The algorithm or rules to follow to compute the score."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The algorithm or rules to follow to compute the score.
      def algorithm
        read_property(:algorithm)
      end

      # The algorithm or rules to follow to compute the score.
      def algorithm=(value)
        write_property(:algorithm, value)
      end
    end
  end
end
