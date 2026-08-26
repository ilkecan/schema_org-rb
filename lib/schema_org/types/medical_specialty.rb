# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/MedicalSpecialty
  #
  # Any specific branch of medical science or practice. Medical specialities include clinical specialties that pertain to particular organ systems and their respective disease states, as well as allied health specialties. Enumerated type.
  class MedicalSpecialty < Base
    include Mixins::MedicalSpecialty

    SCHEMA_NAME = "MedicalSpecialty"
    SCHEMA_TYPES = [self, SchemaOrg::MedicalEnumeration, SchemaOrg::Specialty, SchemaOrg::Enumeration, SchemaOrg::Intangible, SchemaOrg::Thing].freeze

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
    ANESTHESIA = EnumerationValue.new("Anesthesia", [SchemaOrg::MedicalSpecialty])
    CARDIOVASCULAR = EnumerationValue.new("Cardiovascular", [SchemaOrg::MedicalSpecialty])
    COMMUNITY_HEALTH = EnumerationValue.new("CommunityHealth", [SchemaOrg::MedicalSpecialty])
    DENTISTRY = EnumerationValue.new("Dentistry", [SchemaOrg::MedicalSpecialty])
    DERMATOLOGIC = EnumerationValue.new("Dermatologic", [SchemaOrg::MedicalSpecialty])
    DERMATOLOGY = EnumerationValue.new("Dermatology", [SchemaOrg::MedicalSpecialty])
    DIET_NUTRITION = EnumerationValue.new("DietNutrition", [SchemaOrg::MedicalSpecialty])
    EMERGENCY = EnumerationValue.new("Emergency", [SchemaOrg::MedicalSpecialty])
    ENDOCRINE = EnumerationValue.new("Endocrine", [SchemaOrg::MedicalSpecialty])
    GASTROENTEROLOGIC = EnumerationValue.new("Gastroenterologic", [SchemaOrg::MedicalSpecialty])
    GENETIC = EnumerationValue.new("Genetic", [SchemaOrg::MedicalSpecialty])
    GERIATRIC = EnumerationValue.new("Geriatric", [SchemaOrg::MedicalSpecialty])
    GYNECOLOGIC = EnumerationValue.new("Gynecologic", [SchemaOrg::MedicalSpecialty])
    HEMATOLOGIC = EnumerationValue.new("Hematologic", [SchemaOrg::MedicalSpecialty])
    INFECTIOUS = EnumerationValue.new("Infectious", [SchemaOrg::MedicalSpecialty])
    LABORATORY_SCIENCE = EnumerationValue.new("LaboratoryScience", [SchemaOrg::MedicalSpecialty])
    MIDWIFERY = EnumerationValue.new("Midwifery", [SchemaOrg::MedicalSpecialty])
    MUSCULOSKELETAL = EnumerationValue.new("Musculoskeletal", [SchemaOrg::MedicalSpecialty])
    NEUROLOGIC = EnumerationValue.new("Neurologic", [SchemaOrg::MedicalSpecialty])
    NURSING = EnumerationValue.new("Nursing", [SchemaOrg::MedicalSpecialty])
    OBSTETRIC = EnumerationValue.new("Obstetric", [SchemaOrg::MedicalSpecialty])
    ONCOLOGIC = EnumerationValue.new("Oncologic", [SchemaOrg::MedicalSpecialty])
    OPTOMETRIC = EnumerationValue.new("Optometric", [SchemaOrg::MedicalSpecialty])
    OTOLARYNGOLOGIC = EnumerationValue.new("Otolaryngologic", [SchemaOrg::MedicalSpecialty])
    PATHOLOGY = EnumerationValue.new("Pathology", [SchemaOrg::MedicalSpecialty])
    PEDIATRIC = EnumerationValue.new("Pediatric", [SchemaOrg::MedicalSpecialty])
    PHARMACY_SPECIALTY = EnumerationValue.new("PharmacySpecialty", [SchemaOrg::MedicalSpecialty])
    PHYSIOTHERAPY = EnumerationValue.new("Physiotherapy", [SchemaOrg::MedicalSpecialty])
    PLASTIC_SURGERY = EnumerationValue.new("PlasticSurgery", [SchemaOrg::MedicalSpecialty])
    PODIATRIC = EnumerationValue.new("Podiatric", [SchemaOrg::MedicalSpecialty])
    PRIMARY_CARE = EnumerationValue.new("PrimaryCare", [SchemaOrg::MedicalSpecialty])
    PSYCHIATRIC = EnumerationValue.new("Psychiatric", [SchemaOrg::MedicalSpecialty])
    PUBLIC_HEALTH = EnumerationValue.new("PublicHealth", [SchemaOrg::MedicalSpecialty])
    PULMONARY = EnumerationValue.new("Pulmonary", [SchemaOrg::MedicalSpecialty])
    RADIOGRAPHY = EnumerationValue.new("Radiography", [SchemaOrg::MedicalImagingTechnique, SchemaOrg::MedicalSpecialty])
    RENAL = EnumerationValue.new("Renal", [SchemaOrg::MedicalSpecialty])
    RESPIRATORY_THERAPY = EnumerationValue.new("RespiratoryTherapy", [SchemaOrg::MedicalSpecialty])
    RHEUMATOLOGIC = EnumerationValue.new("Rheumatologic", [SchemaOrg::MedicalSpecialty])
    SPEECH_PATHOLOGY = EnumerationValue.new("SpeechPathology", [SchemaOrg::MedicalSpecialty])
    SURGICAL = EnumerationValue.new("Surgical", [SchemaOrg::MedicalSpecialty])
    TOXICOLOGIC = EnumerationValue.new("Toxicologic", [SchemaOrg::MedicalSpecialty])
    UROLOGIC = EnumerationValue.new("Urologic", [SchemaOrg::MedicalSpecialty])
    VALUES = [ANESTHESIA, CARDIOVASCULAR, COMMUNITY_HEALTH, DENTISTRY, DERMATOLOGIC, DERMATOLOGY, DIET_NUTRITION, EMERGENCY, ENDOCRINE, GASTROENTEROLOGIC, GENETIC, GERIATRIC, GYNECOLOGIC, HEMATOLOGIC, INFECTIOUS, LABORATORY_SCIENCE, MIDWIFERY, MUSCULOSKELETAL, NEUROLOGIC, NURSING, OBSTETRIC, ONCOLOGIC, OPTOMETRIC, OTOLARYNGOLOGIC, PATHOLOGY, PEDIATRIC, PHARMACY_SPECIALTY, PHYSIOTHERAPY, PLASTIC_SURGERY, PODIATRIC, PRIMARY_CARE, PSYCHIATRIC, PUBLIC_HEALTH, PULMONARY, RADIOGRAPHY, RENAL, RESPIRATORY_THERAPY, RHEUMATOLOGIC, SPEECH_PATHOLOGY, SURGICAL, TOXICOLOGIC, UROLOGIC].freeze

    def self.values
      VALUES
    end
  end
end
