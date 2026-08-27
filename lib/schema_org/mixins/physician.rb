# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module Physician
      include MedicalBusiness
      include MedicalOrganization

      def self.schema_property_definitions
        {
          available_service: {
            schema_name: "availableService",
            schema_url: "https://schema.org/availableService",
            comment_lines: ["A medical service available from this provider."].freeze,
            ranges: ["MedicalProcedure", "MedicalTest", "MedicalTherapy"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          hospital_affiliation: {
            schema_name: "hospitalAffiliation",
            schema_url: "https://schema.org/hospitalAffiliation",
            comment_lines: ["A hospital with which the physician or office is affiliated."].freeze,
            ranges: ["Hospital"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          medical_specialty: {
            schema_name: "medicalSpecialty",
            schema_url: "https://schema.org/medicalSpecialty",
            comment_lines: ["A medical specialty of the provider."].freeze,
            ranges: ["MedicalSpecialty"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          occupational_category: {
            schema_name: "occupationalCategory",
            schema_url: "https://schema.org/occupationalCategory",
            comment_lines: ["A category describing the job, preferably using a term from a taxonomy such as [BLS O*NET-SOC](http://www.onetcenter.org/taxonomy.html), [ISCO-08](https://www.ilo.org/public/english/bureau/stat/isco/isco08/) or similar, with the property repeated for each applicable value. Ideally the taxonomy should be identified, and both the textual label and formal code for the category should be provided.\\n", "Note: for historical reasons, any textual label and formal code provided as a literal may be assumed to be from O*NET-SOC."].freeze,
            ranges: ["CategoryCode", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          us_npi: {
            schema_name: "usNPI",
            schema_url: "https://schema.org/usNPI",
            comment_lines: ["A <a href=\"https://en.wikipedia.org/wiki/National_Provider_Identifier\">National Provider Identifier</a> (NPI)", "    is a unique 10-digit identification number issued to health care providers in the United States by the Centers for Medicare and Medicaid Services."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # A medical service available from this provider.
      def available_service
        read_property(:available_service)
      end

      # A medical service available from this provider.
      def available_service=(value)
        write_property(:available_service, value)
      end

      # A hospital with which the physician or office is affiliated.
      def hospital_affiliation
        read_property(:hospital_affiliation)
      end

      # A hospital with which the physician or office is affiliated.
      def hospital_affiliation=(value)
        write_property(:hospital_affiliation, value)
      end

      # A medical specialty of the provider.
      def medical_specialty
        read_property(:medical_specialty)
      end

      # A medical specialty of the provider.
      def medical_specialty=(value)
        write_property(:medical_specialty, value)
      end

      # A category describing the job, preferably using a term from a taxonomy such as [BLS O*NET-SOC](http://www.onetcenter.org/taxonomy.html), [ISCO-08](https://www.ilo.org/public/english/bureau/stat/isco/isco08/) or similar, with the property repeated for each applicable value. Ideally the taxonomy should be identified, and both the textual label and formal code for the category should be provided.\n
      # Note: for historical reasons, any textual label and formal code provided as a literal may be assumed to be from O*NET-SOC.
      def occupational_category
        read_property(:occupational_category)
      end

      # A category describing the job, preferably using a term from a taxonomy such as [BLS O*NET-SOC](http://www.onetcenter.org/taxonomy.html), [ISCO-08](https://www.ilo.org/public/english/bureau/stat/isco/isco08/) or similar, with the property repeated for each applicable value. Ideally the taxonomy should be identified, and both the textual label and formal code for the category should be provided.\n
      # Note: for historical reasons, any textual label and formal code provided as a literal may be assumed to be from O*NET-SOC.
      def occupational_category=(value)
        write_property(:occupational_category, value)
      end

      # A <a href="https://en.wikipedia.org/wiki/National_Provider_Identifier">National Provider Identifier</a> (NPI)
      #     is a unique 10-digit identification number issued to health care providers in the United States by the Centers for Medicare and Medicaid Services.
      def us_npi
        read_property(:us_npi)
      end

      # A <a href="https://en.wikipedia.org/wiki/National_Provider_Identifier">National Provider Identifier</a> (NPI)
      #     is a unique 10-digit identification number issued to health care providers in the United States by the Centers for Medicare and Medicaid Services.
      def us_npi=(value)
        write_property(:us_npi, value)
      end
    end
  end
end
