# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module MedicalTrial
      include MedicalStudy

      def self.schema_property_definitions
        {
          trial_design: {
            schema_name: "trialDesign",
            schema_url: "https://schema.org/trialDesign",
            comment_lines: ["Specifics about the trial design (enumerated)."].freeze,
            ranges: ["MedicalTrialDesign"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # Specifics about the trial design (enumerated).
      def trial_design
        read_property(:trial_design)
      end

      # Specifics about the trial design (enumerated).
      def trial_design=(value)
        write_property(:trial_design, value)
      end
    end
  end
end
