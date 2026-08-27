# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  # https://schema.org/HealthAspectEnumeration
  #
  # HealthAspectEnumeration enumerates several aspects of health content online, each of which might be described using [[hasHealthAspect]] and [[HealthTopicContent]].
  class HealthAspectEnumeration < Base
    include Mixins::HealthAspectEnumeration

    SCHEMA_NAME = "HealthAspectEnumeration"
    SCHEMA_TYPES = [self, SchemaOrg::Enumeration, SchemaOrg::Intangible, SchemaOrg::Thing].freeze

    class << self
      def schema_name
        SCHEMA_NAME
      end

      def schema_types
        SCHEMA_TYPES
      end

      def schema_type?(other_type)
        Base.schema_type_argument!(other_type)
        SCHEMA_TYPES.include?(other_type)
      end

      def new(**properties)
        super
      end
    end
    ALLERGIES_HEALTH_ASPECT = EnumerationValue.new("AllergiesHealthAspect", [SchemaOrg::HealthAspectEnumeration])
    BENEFITS_HEALTH_ASPECT = EnumerationValue.new("BenefitsHealthAspect", [SchemaOrg::HealthAspectEnumeration])
    CAUSES_HEALTH_ASPECT = EnumerationValue.new("CausesHealthAspect", [SchemaOrg::HealthAspectEnumeration])
    CONTAGIOUSNESS_HEALTH_ASPECT = EnumerationValue.new("ContagiousnessHealthAspect", [SchemaOrg::HealthAspectEnumeration])
    EFFECTIVENESS_HEALTH_ASPECT = EnumerationValue.new("EffectivenessHealthAspect", [SchemaOrg::HealthAspectEnumeration])
    GETTING_ACCESS_HEALTH_ASPECT = EnumerationValue.new("GettingAccessHealthAspect", [SchemaOrg::HealthAspectEnumeration])
    HOW_IT_WORKS_HEALTH_ASPECT = EnumerationValue.new("HowItWorksHealthAspect", [SchemaOrg::HealthAspectEnumeration])
    HOW_OR_WHERE_HEALTH_ASPECT = EnumerationValue.new("HowOrWhereHealthAspect", [SchemaOrg::HealthAspectEnumeration])
    INGREDIENTS_HEALTH_ASPECT = EnumerationValue.new("IngredientsHealthAspect", [SchemaOrg::HealthAspectEnumeration])
    LIVING_WITH_HEALTH_ASPECT = EnumerationValue.new("LivingWithHealthAspect", [SchemaOrg::HealthAspectEnumeration])
    MAY_TREAT_HEALTH_ASPECT = EnumerationValue.new("MayTreatHealthAspect", [SchemaOrg::HealthAspectEnumeration])
    MISCONCEPTIONS_HEALTH_ASPECT = EnumerationValue.new("MisconceptionsHealthAspect", [SchemaOrg::HealthAspectEnumeration])
    OVERVIEW_HEALTH_ASPECT = EnumerationValue.new("OverviewHealthAspect", [SchemaOrg::HealthAspectEnumeration])
    PATIENT_EXPERIENCE_HEALTH_ASPECT = EnumerationValue.new("PatientExperienceHealthAspect", [SchemaOrg::HealthAspectEnumeration])
    PREGNANCY_HEALTH_ASPECT = EnumerationValue.new("PregnancyHealthAspect", [SchemaOrg::HealthAspectEnumeration])
    PREVENTION_HEALTH_ASPECT = EnumerationValue.new("PreventionHealthAspect", [SchemaOrg::HealthAspectEnumeration])
    PROGNOSIS_HEALTH_ASPECT = EnumerationValue.new("PrognosisHealthAspect", [SchemaOrg::HealthAspectEnumeration])
    RELATED_TOPICS_HEALTH_ASPECT = EnumerationValue.new("RelatedTopicsHealthAspect", [SchemaOrg::HealthAspectEnumeration])
    RISKS_OR_COMPLICATIONS_HEALTH_ASPECT = EnumerationValue.new("RisksOrComplicationsHealthAspect", [SchemaOrg::HealthAspectEnumeration])
    SAFETY_HEALTH_ASPECT = EnumerationValue.new("SafetyHealthAspect", [SchemaOrg::HealthAspectEnumeration])
    SCREENING_HEALTH_ASPECT = EnumerationValue.new("ScreeningHealthAspect", [SchemaOrg::HealthAspectEnumeration])
    SEE_DOCTOR_HEALTH_ASPECT = EnumerationValue.new("SeeDoctorHealthAspect", [SchemaOrg::HealthAspectEnumeration])
    SELF_CARE_HEALTH_ASPECT = EnumerationValue.new("SelfCareHealthAspect", [SchemaOrg::HealthAspectEnumeration])
    SIDE_EFFECTS_HEALTH_ASPECT = EnumerationValue.new("SideEffectsHealthAspect", [SchemaOrg::HealthAspectEnumeration])
    STAGES_HEALTH_ASPECT = EnumerationValue.new("StagesHealthAspect", [SchemaOrg::HealthAspectEnumeration])
    SYMPTOMS_HEALTH_ASPECT = EnumerationValue.new("SymptomsHealthAspect", [SchemaOrg::HealthAspectEnumeration])
    TREATMENTS_HEALTH_ASPECT = EnumerationValue.new("TreatmentsHealthAspect", [SchemaOrg::HealthAspectEnumeration])
    TYPES_HEALTH_ASPECT = EnumerationValue.new("TypesHealthAspect", [SchemaOrg::HealthAspectEnumeration])
    USAGE_OR_SCHEDULE_HEALTH_ASPECT = EnumerationValue.new("UsageOrScheduleHealthAspect", [SchemaOrg::HealthAspectEnumeration])
    VALUES = [ALLERGIES_HEALTH_ASPECT, BENEFITS_HEALTH_ASPECT, CAUSES_HEALTH_ASPECT, CONTAGIOUSNESS_HEALTH_ASPECT, EFFECTIVENESS_HEALTH_ASPECT, GETTING_ACCESS_HEALTH_ASPECT, HOW_IT_WORKS_HEALTH_ASPECT, HOW_OR_WHERE_HEALTH_ASPECT, INGREDIENTS_HEALTH_ASPECT, LIVING_WITH_HEALTH_ASPECT, MAY_TREAT_HEALTH_ASPECT, MISCONCEPTIONS_HEALTH_ASPECT, OVERVIEW_HEALTH_ASPECT, PATIENT_EXPERIENCE_HEALTH_ASPECT, PREGNANCY_HEALTH_ASPECT, PREVENTION_HEALTH_ASPECT, PROGNOSIS_HEALTH_ASPECT, RELATED_TOPICS_HEALTH_ASPECT, RISKS_OR_COMPLICATIONS_HEALTH_ASPECT, SAFETY_HEALTH_ASPECT, SCREENING_HEALTH_ASPECT, SEE_DOCTOR_HEALTH_ASPECT, SELF_CARE_HEALTH_ASPECT, SIDE_EFFECTS_HEALTH_ASPECT, STAGES_HEALTH_ASPECT, SYMPTOMS_HEALTH_ASPECT, TREATMENTS_HEALTH_ASPECT, TYPES_HEALTH_ASPECT, USAGE_OR_SCHEDULE_HEALTH_ASPECT].freeze

    def self.values
      VALUES
    end
  end
end
