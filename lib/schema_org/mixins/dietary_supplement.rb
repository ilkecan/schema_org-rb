# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module DietarySupplement
      include Product
      include Substance

      def self.schema_property_definitions
        {
          active_ingredient: {
            schema_name: "activeIngredient",
            schema_url: "https://schema.org/activeIngredient",
            comment_lines: ["An active ingredient, typically chemical compounds and/or biologic substances."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          is_proprietary: {
            schema_name: "isProprietary",
            schema_url: "https://schema.org/isProprietary",
            comment_lines: ["True if this item's name is a proprietary/brand name (vs. generic name)."].freeze,
            ranges: ["Boolean"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          legal_status: {
            schema_name: "legalStatus",
            schema_url: "https://schema.org/legalStatus",
            comment_lines: ["The drug or supplement's legal status, including any controlled substance schedules that apply."].freeze,
            ranges: ["DrugLegalStatus", "MedicalEnumeration", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          maximum_intake: {
            schema_name: "maximumIntake",
            schema_url: "https://schema.org/maximumIntake",
            comment_lines: ["Recommended intake of this supplement for a given population as defined by a specific recommending authority."].freeze,
            ranges: ["MaximumDoseSchedule"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          mechanism_of_action: {
            schema_name: "mechanismOfAction",
            schema_url: "https://schema.org/mechanismOfAction",
            comment_lines: ["The specific biochemical interaction through which this drug or supplement produces its pharmacological effect."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          non_proprietary_name: {
            schema_name: "nonProprietaryName",
            schema_url: "https://schema.org/nonProprietaryName",
            comment_lines: ["The generic name of this drug or supplement."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          proprietary_name: {
            schema_name: "proprietaryName",
            schema_url: "https://schema.org/proprietaryName",
            comment_lines: ["Proprietary name given to the diet plan, typically by its originator or creator."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          recommended_intake: {
            schema_name: "recommendedIntake",
            schema_url: "https://schema.org/recommendedIntake",
            comment_lines: ["Recommended intake of this supplement for a given population as defined by a specific recommending authority."].freeze,
            ranges: ["RecommendedDoseSchedule"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          safety_consideration: {
            schema_name: "safetyConsideration",
            schema_url: "https://schema.org/safetyConsideration",
            comment_lines: ["Any potential safety concern associated with the supplement. May include interactions with other drugs and foods, pregnancy, breastfeeding, known adverse reactions, and documented efficacy of the supplement."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          target_population: {
            schema_name: "targetPopulation",
            schema_url: "https://schema.org/targetPopulation",
            comment_lines: ["Characteristics of the population for which this is intended, or which typically uses it, e.g. 'adults'."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # An active ingredient, typically chemical compounds and/or biologic substances.
      def active_ingredient
        read_property(:active_ingredient)
      end

      # An active ingredient, typically chemical compounds and/or biologic substances.
      def active_ingredient=(value)
        write_property(:active_ingredient, value)
      end

      # True if this item's name is a proprietary/brand name (vs. generic name).
      def is_proprietary
        read_property(:is_proprietary)
      end

      # True if this item's name is a proprietary/brand name (vs. generic name).
      def is_proprietary=(value)
        write_property(:is_proprietary, value)
      end

      # The drug or supplement's legal status, including any controlled substance schedules that apply.
      def legal_status
        read_property(:legal_status)
      end

      # The drug or supplement's legal status, including any controlled substance schedules that apply.
      def legal_status=(value)
        write_property(:legal_status, value)
      end

      # Recommended intake of this supplement for a given population as defined by a specific recommending authority.
      def maximum_intake
        read_property(:maximum_intake)
      end

      # Recommended intake of this supplement for a given population as defined by a specific recommending authority.
      def maximum_intake=(value)
        write_property(:maximum_intake, value)
      end

      # The specific biochemical interaction through which this drug or supplement produces its pharmacological effect.
      def mechanism_of_action
        read_property(:mechanism_of_action)
      end

      # The specific biochemical interaction through which this drug or supplement produces its pharmacological effect.
      def mechanism_of_action=(value)
        write_property(:mechanism_of_action, value)
      end

      # The generic name of this drug or supplement.
      def non_proprietary_name
        read_property(:non_proprietary_name)
      end

      # The generic name of this drug or supplement.
      def non_proprietary_name=(value)
        write_property(:non_proprietary_name, value)
      end

      # Proprietary name given to the diet plan, typically by its originator or creator.
      def proprietary_name
        read_property(:proprietary_name)
      end

      # Proprietary name given to the diet plan, typically by its originator or creator.
      def proprietary_name=(value)
        write_property(:proprietary_name, value)
      end

      # Recommended intake of this supplement for a given population as defined by a specific recommending authority.
      def recommended_intake
        read_property(:recommended_intake)
      end

      # Recommended intake of this supplement for a given population as defined by a specific recommending authority.
      def recommended_intake=(value)
        write_property(:recommended_intake, value)
      end

      # Any potential safety concern associated with the supplement. May include interactions with other drugs and foods, pregnancy, breastfeeding, known adverse reactions, and documented efficacy of the supplement.
      def safety_consideration
        read_property(:safety_consideration)
      end

      # Any potential safety concern associated with the supplement. May include interactions with other drugs and foods, pregnancy, breastfeeding, known adverse reactions, and documented efficacy of the supplement.
      def safety_consideration=(value)
        write_property(:safety_consideration, value)
      end

      # Characteristics of the population for which this is intended, or which typically uses it, e.g. 'adults'.
      def target_population
        read_property(:target_population)
      end

      # Characteristics of the population for which this is intended, or which typically uses it, e.g. 'adults'.
      def target_population=(value)
        write_property(:target_population, value)
      end
    end
  end
end
