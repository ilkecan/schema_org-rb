# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module Drug
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
          administration_route: {
            schema_name: "administrationRoute",
            schema_url: "https://schema.org/administrationRoute",
            comment_lines: ["A route by which this drug may be administered, e.g. 'oral'."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          alcohol_warning: {
            schema_name: "alcoholWarning",
            schema_url: "https://schema.org/alcoholWarning",
            comment_lines: ["Any precaution, guidance, contraindication, etc. related to consumption of alcohol while taking this drug."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          available_strength: {
            schema_name: "availableStrength",
            schema_url: "https://schema.org/availableStrength",
            comment_lines: ["An available dosage strength for the drug."].freeze,
            ranges: ["DrugStrength"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          breastfeeding_warning: {
            schema_name: "breastfeedingWarning",
            schema_url: "https://schema.org/breastfeedingWarning",
            comment_lines: ["Any precaution, guidance, contraindication, etc. related to this drug's use by breastfeeding mothers."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          clincal_pharmacology: {
            schema_name: "clincalPharmacology",
            schema_url: "https://schema.org/clincalPharmacology",
            comment_lines: ["Description of the absorption and elimination of drugs, including their concentration (pharmacokinetics, pK) and biological effects (pharmacodynamics, pD)."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: "clinicalPharmacology",
            supersedes: nil
          }.freeze,
          clinical_pharmacology: {
            schema_name: "clinicalPharmacology",
            schema_url: "https://schema.org/clinicalPharmacology",
            comment_lines: ["Description of the absorption and elimination of drugs, including their concentration (pharmacokinetics, pK) and biological effects (pharmacodynamics, pD)."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: "clincalPharmacology"
          }.freeze,
          dosage_form: {
            schema_name: "dosageForm",
            schema_url: "https://schema.org/dosageForm",
            comment_lines: ["A dosage form in which this drug/supplement is available, e.g. 'tablet', 'suspension', 'injection'."].freeze,
            ranges: ["Text"].freeze,
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
          drug_class: {
            schema_name: "drugClass",
            schema_url: "https://schema.org/drugClass",
            comment_lines: ["The class of drug this belongs to (e.g., statins)."].freeze,
            ranges: ["DrugClass"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          drug_unit: {
            schema_name: "drugUnit",
            schema_url: "https://schema.org/drugUnit",
            comment_lines: ["The unit in which the drug is measured, e.g. '5 mg tablet'."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          food_warning: {
            schema_name: "foodWarning",
            schema_url: "https://schema.org/foodWarning",
            comment_lines: ["Any precaution, guidance, contraindication, etc. related to consumption of specific foods while taking this drug."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          included_in_health_insurance_plan: {
            schema_name: "includedInHealthInsurancePlan",
            schema_url: "https://schema.org/includedInHealthInsurancePlan",
            comment_lines: ["The insurance plans that cover this drug."].freeze,
            ranges: ["HealthInsurancePlan"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          interacting_drug: {
            schema_name: "interactingDrug",
            schema_url: "https://schema.org/interactingDrug",
            comment_lines: ["Another drug that is known to interact with this drug in a way that impacts the effect of this drug or causes a risk to the patient. Note: disease interactions are typically captured as contraindications."].freeze,
            ranges: ["Drug"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          is_available_generically: {
            schema_name: "isAvailableGenerically",
            schema_url: "https://schema.org/isAvailableGenerically",
            comment_lines: ["True if the drug is available in a generic form (regardless of name)."].freeze,
            ranges: ["Boolean"].freeze,
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
          label_details: {
            schema_name: "labelDetails",
            schema_url: "https://schema.org/labelDetails",
            comment_lines: ["Link to the drug's label details."].freeze,
            ranges: ["URL"].freeze,
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
          overdosage: {
            schema_name: "overdosage",
            schema_url: "https://schema.org/overdosage",
            comment_lines: ["Any information related to overdose on a drug, including signs or symptoms, treatments, contact information for emergency response."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          pregnancy_category: {
            schema_name: "pregnancyCategory",
            schema_url: "https://schema.org/pregnancyCategory",
            comment_lines: ["Pregnancy category of this drug."].freeze,
            ranges: ["DrugPregnancyCategory"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          pregnancy_warning: {
            schema_name: "pregnancyWarning",
            schema_url: "https://schema.org/pregnancyWarning",
            comment_lines: ["Any precaution, guidance, contraindication, etc. related to this drug's use during pregnancy."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          prescribing_info: {
            schema_name: "prescribingInfo",
            schema_url: "https://schema.org/prescribingInfo",
            comment_lines: ["Link to prescribing information for the drug."].freeze,
            ranges: ["URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          prescription_status: {
            schema_name: "prescriptionStatus",
            schema_url: "https://schema.org/prescriptionStatus",
            comment_lines: ["Indicates the status of drug prescription, e.g. local catalogs classifications or whether the drug is available by prescription or over-the-counter, etc."].freeze,
            ranges: ["DrugPrescriptionStatus", "Text"].freeze,
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
          related_drug: {
            schema_name: "relatedDrug",
            schema_url: "https://schema.org/relatedDrug",
            comment_lines: ["Any other drug related to this one, for example commonly-prescribed alternatives."].freeze,
            ranges: ["Drug"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          rxcui: {
            schema_name: "rxcui",
            schema_url: "https://schema.org/rxcui",
            comment_lines: ["The RxCUI drug identifier from RXNORM."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          warning: {
            schema_name: "warning",
            schema_url: "https://schema.org/warning",
            comment_lines: ["Any FDA or other warnings about the drug (text or URL)."].freeze,
            ranges: ["Text", "URL"].freeze,
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

      # A route by which this drug may be administered, e.g. 'oral'.
      def administration_route
        read_property(:administration_route)
      end

      # A route by which this drug may be administered, e.g. 'oral'.
      def administration_route=(value)
        write_property(:administration_route, value)
      end

      # Any precaution, guidance, contraindication, etc. related to consumption of alcohol while taking this drug.
      def alcohol_warning
        read_property(:alcohol_warning)
      end

      # Any precaution, guidance, contraindication, etc. related to consumption of alcohol while taking this drug.
      def alcohol_warning=(value)
        write_property(:alcohol_warning, value)
      end

      # An available dosage strength for the drug.
      def available_strength
        read_property(:available_strength)
      end

      # An available dosage strength for the drug.
      def available_strength=(value)
        write_property(:available_strength, value)
      end

      # Any precaution, guidance, contraindication, etc. related to this drug's use by breastfeeding mothers.
      def breastfeeding_warning
        read_property(:breastfeeding_warning)
      end

      # Any precaution, guidance, contraindication, etc. related to this drug's use by breastfeeding mothers.
      def breastfeeding_warning=(value)
        write_property(:breastfeeding_warning, value)
      end

      # Description of the absorption and elimination of drugs, including their concentration (pharmacokinetics, pK) and biological effects (pharmacodynamics, pD).
      # Superseded by `clinicalPharmacology`.
      def clincal_pharmacology
        read_property(:clincal_pharmacology)
      end

      # Description of the absorption and elimination of drugs, including their concentration (pharmacokinetics, pK) and biological effects (pharmacodynamics, pD).
      # Superseded by `clinicalPharmacology`.
      def clincal_pharmacology=(value)
        write_property(:clincal_pharmacology, value)
      end

      # Description of the absorption and elimination of drugs, including their concentration (pharmacokinetics, pK) and biological effects (pharmacodynamics, pD).
      # Supersedes `clincalPharmacology`.
      def clinical_pharmacology
        read_property(:clinical_pharmacology)
      end

      # Description of the absorption and elimination of drugs, including their concentration (pharmacokinetics, pK) and biological effects (pharmacodynamics, pD).
      # Supersedes `clincalPharmacology`.
      def clinical_pharmacology=(value)
        write_property(:clinical_pharmacology, value)
      end

      # A dosage form in which this drug/supplement is available, e.g. 'tablet', 'suspension', 'injection'.
      def dosage_form
        read_property(:dosage_form)
      end

      # A dosage form in which this drug/supplement is available, e.g. 'tablet', 'suspension', 'injection'.
      def dosage_form=(value)
        write_property(:dosage_form, value)
      end

      # A dosing schedule for the drug for a given population, either observed, recommended, or maximum dose based on the type used.
      def dose_schedule
        read_property(:dose_schedule)
      end

      # A dosing schedule for the drug for a given population, either observed, recommended, or maximum dose based on the type used.
      def dose_schedule=(value)
        write_property(:dose_schedule, value)
      end

      # The class of drug this belongs to (e.g., statins).
      def drug_class
        read_property(:drug_class)
      end

      # The class of drug this belongs to (e.g., statins).
      def drug_class=(value)
        write_property(:drug_class, value)
      end

      # The unit in which the drug is measured, e.g. '5 mg tablet'.
      def drug_unit
        read_property(:drug_unit)
      end

      # The unit in which the drug is measured, e.g. '5 mg tablet'.
      def drug_unit=(value)
        write_property(:drug_unit, value)
      end

      # Any precaution, guidance, contraindication, etc. related to consumption of specific foods while taking this drug.
      def food_warning
        read_property(:food_warning)
      end

      # Any precaution, guidance, contraindication, etc. related to consumption of specific foods while taking this drug.
      def food_warning=(value)
        write_property(:food_warning, value)
      end

      # The insurance plans that cover this drug.
      def included_in_health_insurance_plan
        read_property(:included_in_health_insurance_plan)
      end

      # The insurance plans that cover this drug.
      def included_in_health_insurance_plan=(value)
        write_property(:included_in_health_insurance_plan, value)
      end

      # Another drug that is known to interact with this drug in a way that impacts the effect of this drug or causes a risk to the patient. Note: disease interactions are typically captured as contraindications.
      def interacting_drug
        read_property(:interacting_drug)
      end

      # Another drug that is known to interact with this drug in a way that impacts the effect of this drug or causes a risk to the patient. Note: disease interactions are typically captured as contraindications.
      def interacting_drug=(value)
        write_property(:interacting_drug, value)
      end

      # True if the drug is available in a generic form (regardless of name).
      def is_available_generically
        read_property(:is_available_generically)
      end

      # True if the drug is available in a generic form (regardless of name).
      def is_available_generically=(value)
        write_property(:is_available_generically, value)
      end

      # True if this item's name is a proprietary/brand name (vs. generic name).
      def is_proprietary
        read_property(:is_proprietary)
      end

      # True if this item's name is a proprietary/brand name (vs. generic name).
      def is_proprietary=(value)
        write_property(:is_proprietary, value)
      end

      # Link to the drug's label details.
      def label_details
        read_property(:label_details)
      end

      # Link to the drug's label details.
      def label_details=(value)
        write_property(:label_details, value)
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

      # Any information related to overdose on a drug, including signs or symptoms, treatments, contact information for emergency response.
      def overdosage
        read_property(:overdosage)
      end

      # Any information related to overdose on a drug, including signs or symptoms, treatments, contact information for emergency response.
      def overdosage=(value)
        write_property(:overdosage, value)
      end

      # Pregnancy category of this drug.
      def pregnancy_category
        read_property(:pregnancy_category)
      end

      # Pregnancy category of this drug.
      def pregnancy_category=(value)
        write_property(:pregnancy_category, value)
      end

      # Any precaution, guidance, contraindication, etc. related to this drug's use during pregnancy.
      def pregnancy_warning
        read_property(:pregnancy_warning)
      end

      # Any precaution, guidance, contraindication, etc. related to this drug's use during pregnancy.
      def pregnancy_warning=(value)
        write_property(:pregnancy_warning, value)
      end

      # Link to prescribing information for the drug.
      def prescribing_info
        read_property(:prescribing_info)
      end

      # Link to prescribing information for the drug.
      def prescribing_info=(value)
        write_property(:prescribing_info, value)
      end

      # Indicates the status of drug prescription, e.g. local catalogs classifications or whether the drug is available by prescription or over-the-counter, etc.
      def prescription_status
        read_property(:prescription_status)
      end

      # Indicates the status of drug prescription, e.g. local catalogs classifications or whether the drug is available by prescription or over-the-counter, etc.
      def prescription_status=(value)
        write_property(:prescription_status, value)
      end

      # Proprietary name given to the diet plan, typically by its originator or creator.
      def proprietary_name
        read_property(:proprietary_name)
      end

      # Proprietary name given to the diet plan, typically by its originator or creator.
      def proprietary_name=(value)
        write_property(:proprietary_name, value)
      end

      # Any other drug related to this one, for example commonly-prescribed alternatives.
      def related_drug
        read_property(:related_drug)
      end

      # Any other drug related to this one, for example commonly-prescribed alternatives.
      def related_drug=(value)
        write_property(:related_drug, value)
      end

      # The RxCUI drug identifier from RXNORM.
      def rxcui
        read_property(:rxcui)
      end

      # The RxCUI drug identifier from RXNORM.
      def rxcui=(value)
        write_property(:rxcui, value)
      end

      # Any FDA or other warnings about the drug (text or URL).
      def warning
        read_property(:warning)
      end

      # Any FDA or other warnings about the drug (text or URL).
      def warning=(value)
        write_property(:warning, value)
      end
    end
  end
end
