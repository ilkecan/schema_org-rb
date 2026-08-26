# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module TherapeuticProcedure
      include MedicalProcedure

      def self.schema_property_definitions
        {
          adverse_outcome: {
            schema_name: "adverseOutcome",
            schema_url: "https://schema.org/adverseOutcome",
            comment_lines: ["A possible complication and/or side effect of this therapy. If it is known that an adverse outcome is serious (resulting in death, disability, or permanent damage; requiring hospitalization; or otherwise life-threatening or requiring immediate medical attention), tag it as a seriousAdverseOutcome instead."].freeze,
            ranges: ["MedicalEntity"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          dose_schedule: {
            schema_name: "doseSchedule",
            schema_url: "https://schema.org/doseSchedule",
            comment_lines: ["A dosing schedule for the drug for a given population, either observed, recommended, or maximum dose based on the type used."].freeze,
            ranges: ["DoseSchedule"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          drug: {
            schema_name: "drug",
            schema_url: "https://schema.org/drug",
            comment_lines: ["Specifying a drug or medicine used in a medication procedure."].freeze,
            ranges: ["Drug"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # A possible complication and/or side effect of this therapy. If it is known that an adverse outcome is serious (resulting in death, disability, or permanent damage; requiring hospitalization; or otherwise life-threatening or requiring immediate medical attention), tag it as a seriousAdverseOutcome instead.
      def adverse_outcome
        read_property(:adverse_outcome)
      end

      # A possible complication and/or side effect of this therapy. If it is known that an adverse outcome is serious (resulting in death, disability, or permanent damage; requiring hospitalization; or otherwise life-threatening or requiring immediate medical attention), tag it as a seriousAdverseOutcome instead.
      def adverse_outcome=(value)
        write_property(:adverse_outcome, value)
      end

      # A dosing schedule for the drug for a given population, either observed, recommended, or maximum dose based on the type used.
      def dose_schedule
        read_property(:dose_schedule)
      end

      # A dosing schedule for the drug for a given population, either observed, recommended, or maximum dose based on the type used.
      def dose_schedule=(value)
        write_property(:dose_schedule, value)
      end

      # Specifying a drug or medicine used in a medication procedure.
      def drug
        read_property(:drug)
      end

      # Specifying a drug or medicine used in a medication procedure.
      def drug=(value)
        write_property(:drug, value)
      end
    end
  end
end
