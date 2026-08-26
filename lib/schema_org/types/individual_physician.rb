# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/IndividualPhysician
  #
  # An individual medical practitioner. For their official address use [[address]], for affiliations to hospitals use [[hospitalAffiliation]].
  # The [[practicesAt]] property can be used to indicate [[MedicalOrganization]] hospitals, clinics, pharmacies etc. where this physician practices.
  class IndividualPhysician < Base
    include Mixins::IndividualPhysician

    SCHEMA_NAME = "IndividualPhysician"
    SCHEMA_TYPES = [self, SchemaOrg::Physician, SchemaOrg::MedicalBusiness, SchemaOrg::MedicalOrganization, SchemaOrg::LocalBusiness, SchemaOrg::Organization, SchemaOrg::Place, SchemaOrg::Thing].freeze

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
  end
end
