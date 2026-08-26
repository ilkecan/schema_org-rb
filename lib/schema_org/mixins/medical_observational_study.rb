# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module MedicalObservationalStudy
      include MedicalStudy

      def self.schema_property_definitions
        {
          study_design: {
            schema_name: "studyDesign",
            schema_url: "https://schema.org/studyDesign",
            comment_lines: ["Specifics about the observational study design (enumerated)."].freeze,
            ranges: ["MedicalObservationalStudyDesign"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # Specifics about the observational study design (enumerated).
      def study_design
        read_property(:study_design)
      end

      # Specifics about the observational study design (enumerated).
      def study_design=(value)
        write_property(:study_design, value)
      end
    end
  end
end
