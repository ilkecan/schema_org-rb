# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module Diet
      include CreativeWork
      include LifestyleModification

      def self.schema_property_definitions
        {
          diet_features: {
            schema_name: "dietFeatures",
            schema_url: "https://schema.org/dietFeatures",
            comment_lines: ["Nutritional information specific to the dietary plan. May include dietary recommendations on what foods to avoid, what foods to consume, and specific alterations/deviations from the USDA or other regulatory body's approved dietary guidelines."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          endorsers: {
            schema_name: "endorsers",
            schema_url: "https://schema.org/endorsers",
            comment_lines: ["People or organizations that endorse the plan."].freeze,
            ranges: ["Organization", "Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          expert_considerations: {
            schema_name: "expertConsiderations",
            schema_url: "https://schema.org/expertConsiderations",
            comment_lines: ["Medical expert advice related to the plan."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          physiological_benefits: {
            schema_name: "physiologicalBenefits",
            schema_url: "https://schema.org/physiologicalBenefits",
            comment_lines: ["Specific physiologic benefits associated to the plan."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          risks: {
            schema_name: "risks",
            schema_url: "https://schema.org/risks",
            comment_lines: ["Specific physiologic risks associated to the diet plan."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # Nutritional information specific to the dietary plan. May include dietary recommendations on what foods to avoid, what foods to consume, and specific alterations/deviations from the USDA or other regulatory body's approved dietary guidelines.
      def diet_features
        read_property(:diet_features)
      end

      # Nutritional information specific to the dietary plan. May include dietary recommendations on what foods to avoid, what foods to consume, and specific alterations/deviations from the USDA or other regulatory body's approved dietary guidelines.
      def diet_features=(value)
        write_property(:diet_features, value)
      end

      # People or organizations that endorse the plan.
      def endorsers
        read_property(:endorsers)
      end

      # People or organizations that endorse the plan.
      def endorsers=(value)
        write_property(:endorsers, value)
      end

      # Medical expert advice related to the plan.
      def expert_considerations
        read_property(:expert_considerations)
      end

      # Medical expert advice related to the plan.
      def expert_considerations=(value)
        write_property(:expert_considerations, value)
      end

      # Specific physiologic benefits associated to the plan.
      def physiological_benefits
        read_property(:physiological_benefits)
      end

      # Specific physiologic benefits associated to the plan.
      def physiological_benefits=(value)
        write_property(:physiological_benefits, value)
      end

      # Specific physiologic risks associated to the diet plan.
      def risks
        read_property(:risks)
      end

      # Specific physiologic risks associated to the diet plan.
      def risks=(value)
        write_property(:risks, value)
      end
    end
  end
end
