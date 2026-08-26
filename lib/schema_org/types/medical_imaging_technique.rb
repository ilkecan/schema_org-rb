# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/MedicalImagingTechnique
  #
  # Any medical imaging modality typically used for diagnostic purposes. Enumerated type.
  class MedicalImagingTechnique < Base
    include Mixins::MedicalImagingTechnique

    SCHEMA_NAME = "MedicalImagingTechnique"
    SCHEMA_TYPES = [self, SchemaOrg::MedicalEnumeration, SchemaOrg::Enumeration, SchemaOrg::Intangible, SchemaOrg::Thing].freeze

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
    CT = EnumerationValue.new("CT", [SchemaOrg::MedicalImagingTechnique])
    MRI = EnumerationValue.new("MRI", [SchemaOrg::MedicalImagingTechnique])
    PET = EnumerationValue.new("PET", [SchemaOrg::MedicalImagingTechnique])
    RADIOGRAPHY = EnumerationValue.new("Radiography", [SchemaOrg::MedicalImagingTechnique, SchemaOrg::MedicalSpecialty])
    ULTRASOUND = EnumerationValue.new("Ultrasound", [SchemaOrg::MedicalImagingTechnique])
    X_RAY = EnumerationValue.new("XRay", [SchemaOrg::MedicalImagingTechnique])
    VALUES = [CT, MRI, PET, RADIOGRAPHY, ULTRASOUND, X_RAY].freeze

    def self.values
      VALUES
    end
  end
end
