# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/CovidTestingFacility
  #
  # A CovidTestingFacility is a [[MedicalClinic]] where testing for the COVID-19 Coronavirus
  #       disease is available. If the facility is being made available from an established [[Pharmacy]], [[Hotel]], or other
  #       non-medical organization, multiple types can be listed. This makes it easier to re-use existing schema.org information
  #       about that place, e.g. contact info, address, opening hours. Note that in an emergency, such information may not always be reliable.
  class CovidTestingFacility < Base
    include Mixins::CovidTestingFacility

    SCHEMA_NAME = "CovidTestingFacility"
    SCHEMA_TYPES = [self, SchemaOrg::MedicalClinic, SchemaOrg::MedicalBusiness, SchemaOrg::MedicalOrganization, SchemaOrg::LocalBusiness, SchemaOrg::Organization, SchemaOrg::Place, SchemaOrg::Thing].freeze

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
