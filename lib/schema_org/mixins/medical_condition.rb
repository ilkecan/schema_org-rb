# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module MedicalCondition
      include MedicalEntity

      def self.schema_property_definitions
        {
          associated_anatomy: {
            schema_name: "associatedAnatomy",
            schema_url: "https://schema.org/associatedAnatomy",
            comment_lines: ["The anatomy of the underlying organ system or structures associated with this entity."].freeze,
            ranges: ["AnatomicalStructure", "AnatomicalSystem", "SuperficialAnatomy"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          cause: {
            schema_name: "cause",
            schema_url: "https://schema.org/cause",
            comment_lines: ["The cause of a medical condition."].freeze,
            ranges: ["MedicalCause"].freeze,
            external_ranges: [].freeze,
            inverse_of: "causeOf",
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          differential_diagnosis: {
            schema_name: "differentialDiagnosis",
            schema_url: "https://schema.org/differentialDiagnosis",
            comment_lines: ["One of a set of differential diagnoses for the condition. Specifically, a closely-related or competing diagnosis typically considered later in the cognitive process whereby this medical condition is distinguished from others most likely responsible for a similar collection of signs and symptoms to reach the most parsimonious diagnosis or diagnoses in a patient."].freeze,
            ranges: ["DDxElement"].freeze,
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
          }.freeze,
          epidemiology: {
            schema_name: "epidemiology",
            schema_url: "https://schema.org/epidemiology",
            comment_lines: ["The characteristics of associated patients, such as age, gender, race etc."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          expected_prognosis: {
            schema_name: "expectedPrognosis",
            schema_url: "https://schema.org/expectedPrognosis",
            comment_lines: ["The likely outcome in either the short term or long term of the medical condition."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          natural_progression: {
            schema_name: "naturalProgression",
            schema_url: "https://schema.org/naturalProgression",
            comment_lines: ["The expected progression of the condition if it is not treated and allowed to progress naturally."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          pathophysiology: {
            schema_name: "pathophysiology",
            schema_url: "https://schema.org/pathophysiology",
            comment_lines: ["Changes in the normal mechanical, physical, and biochemical functions that are associated with this activity or condition."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          possible_complication: {
            schema_name: "possibleComplication",
            schema_url: "https://schema.org/possibleComplication",
            comment_lines: ["A possible unexpected and unfavorable evolution of a medical condition. Complications may include worsening of the signs or symptoms of the disease, extension of the condition to other organ systems, etc."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          possible_treatment: {
            schema_name: "possibleTreatment",
            schema_url: "https://schema.org/possibleTreatment",
            comment_lines: ["A possible treatment to address this condition, sign or symptom."].freeze,
            ranges: ["Drug", "DrugClass", "LifestyleModification", "MedicalTherapy"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          primary_prevention: {
            schema_name: "primaryPrevention",
            schema_url: "https://schema.org/primaryPrevention",
            comment_lines: ["A preventative therapy used to prevent an initial occurrence of the medical condition, such as vaccination."].freeze,
            ranges: ["MedicalTherapy"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          risk_factor: {
            schema_name: "riskFactor",
            schema_url: "https://schema.org/riskFactor",
            comment_lines: ["A modifiable or non-modifiable factor that increases the risk of a patient contracting this condition, e.g. age,  coexisting condition."].freeze,
            ranges: ["MedicalRiskFactor"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          secondary_prevention: {
            schema_name: "secondaryPrevention",
            schema_url: "https://schema.org/secondaryPrevention",
            comment_lines: ["A preventative therapy used to prevent reoccurrence of the medical condition after an initial episode of the condition."].freeze,
            ranges: ["Drug", "DrugClass", "LifestyleModification", "MedicalTherapy"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          sign_or_symptom: {
            schema_name: "signOrSymptom",
            schema_url: "https://schema.org/signOrSymptom",
            comment_lines: ["A sign or symptom of this condition. Signs are objective or physically observable manifestations of the medical condition while symptoms are the subjective experience of the medical condition."].freeze,
            ranges: ["MedicalSignOrSymptom"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          stage: {
            schema_name: "stage",
            schema_url: "https://schema.org/stage",
            comment_lines: ["The stage of the condition, if applicable."].freeze,
            ranges: ["MedicalConditionStage"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          status: {
            schema_name: "status",
            schema_url: "https://schema.org/status",
            comment_lines: ["The status of the study (enumerated)."].freeze,
            ranges: ["EventStatusType", "MedicalStudyStatus", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          typical_test: {
            schema_name: "typicalTest",
            schema_url: "https://schema.org/typicalTest",
            comment_lines: ["A medical test typically performed given this condition."].freeze,
            ranges: ["MedicalTest"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The anatomy of the underlying organ system or structures associated with this entity.
      def associated_anatomy
        read_property(:associated_anatomy)
      end

      # The anatomy of the underlying organ system or structures associated with this entity.
      def associated_anatomy=(value)
        write_property(:associated_anatomy, value)
      end

      # The cause of a medical condition.
      # Inverse-property: `causeOf`.
      def cause
        read_property(:cause)
      end

      # The cause of a medical condition.
      # Inverse-property: `causeOf`.
      def cause=(value)
        write_property(:cause, value)
      end

      # One of a set of differential diagnoses for the condition. Specifically, a closely-related or competing diagnosis typically considered later in the cognitive process whereby this medical condition is distinguished from others most likely responsible for a similar collection of signs and symptoms to reach the most parsimonious diagnosis or diagnoses in a patient.
      def differential_diagnosis
        read_property(:differential_diagnosis)
      end

      # One of a set of differential diagnoses for the condition. Specifically, a closely-related or competing diagnosis typically considered later in the cognitive process whereby this medical condition is distinguished from others most likely responsible for a similar collection of signs and symptoms to reach the most parsimonious diagnosis or diagnoses in a patient.
      def differential_diagnosis=(value)
        write_property(:differential_diagnosis, value)
      end

      # Specifying a drug or medicine used in a medication procedure.
      def drug
        read_property(:drug)
      end

      # Specifying a drug or medicine used in a medication procedure.
      def drug=(value)
        write_property(:drug, value)
      end

      # The characteristics of associated patients, such as age, gender, race etc.
      def epidemiology
        read_property(:epidemiology)
      end

      # The characteristics of associated patients, such as age, gender, race etc.
      def epidemiology=(value)
        write_property(:epidemiology, value)
      end

      # The likely outcome in either the short term or long term of the medical condition.
      def expected_prognosis
        read_property(:expected_prognosis)
      end

      # The likely outcome in either the short term or long term of the medical condition.
      def expected_prognosis=(value)
        write_property(:expected_prognosis, value)
      end

      # The expected progression of the condition if it is not treated and allowed to progress naturally.
      def natural_progression
        read_property(:natural_progression)
      end

      # The expected progression of the condition if it is not treated and allowed to progress naturally.
      def natural_progression=(value)
        write_property(:natural_progression, value)
      end

      # Changes in the normal mechanical, physical, and biochemical functions that are associated with this activity or condition.
      def pathophysiology
        read_property(:pathophysiology)
      end

      # Changes in the normal mechanical, physical, and biochemical functions that are associated with this activity or condition.
      def pathophysiology=(value)
        write_property(:pathophysiology, value)
      end

      # A possible unexpected and unfavorable evolution of a medical condition. Complications may include worsening of the signs or symptoms of the disease, extension of the condition to other organ systems, etc.
      def possible_complication
        read_property(:possible_complication)
      end

      # A possible unexpected and unfavorable evolution of a medical condition. Complications may include worsening of the signs or symptoms of the disease, extension of the condition to other organ systems, etc.
      def possible_complication=(value)
        write_property(:possible_complication, value)
      end

      # A possible treatment to address this condition, sign or symptom.
      def possible_treatment
        read_property(:possible_treatment)
      end

      # A possible treatment to address this condition, sign or symptom.
      def possible_treatment=(value)
        write_property(:possible_treatment, value)
      end

      # A preventative therapy used to prevent an initial occurrence of the medical condition, such as vaccination.
      def primary_prevention
        read_property(:primary_prevention)
      end

      # A preventative therapy used to prevent an initial occurrence of the medical condition, such as vaccination.
      def primary_prevention=(value)
        write_property(:primary_prevention, value)
      end

      # A modifiable or non-modifiable factor that increases the risk of a patient contracting this condition, e.g. age,  coexisting condition.
      def risk_factor
        read_property(:risk_factor)
      end

      # A modifiable or non-modifiable factor that increases the risk of a patient contracting this condition, e.g. age,  coexisting condition.
      def risk_factor=(value)
        write_property(:risk_factor, value)
      end

      # A preventative therapy used to prevent reoccurrence of the medical condition after an initial episode of the condition.
      def secondary_prevention
        read_property(:secondary_prevention)
      end

      # A preventative therapy used to prevent reoccurrence of the medical condition after an initial episode of the condition.
      def secondary_prevention=(value)
        write_property(:secondary_prevention, value)
      end

      # A sign or symptom of this condition. Signs are objective or physically observable manifestations of the medical condition while symptoms are the subjective experience of the medical condition.
      def sign_or_symptom
        read_property(:sign_or_symptom)
      end

      # A sign or symptom of this condition. Signs are objective or physically observable manifestations of the medical condition while symptoms are the subjective experience of the medical condition.
      def sign_or_symptom=(value)
        write_property(:sign_or_symptom, value)
      end

      # The stage of the condition, if applicable.
      def stage
        read_property(:stage)
      end

      # The stage of the condition, if applicable.
      def stage=(value)
        write_property(:stage, value)
      end

      # The status of the study (enumerated).
      def status
        read_property(:status)
      end

      # The status of the study (enumerated).
      def status=(value)
        write_property(:status, value)
      end

      # A medical test typically performed given this condition.
      def typical_test
        read_property(:typical_test)
      end

      # A medical test typically performed given this condition.
      def typical_test=(value)
        write_property(:typical_test, value)
      end
    end
  end
end
