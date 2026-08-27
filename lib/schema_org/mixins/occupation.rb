# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module Occupation
      include Intangible

      def self.schema_property_definitions
        {
          education_requirements: {
            schema_name: "educationRequirements",
            schema_url: "https://schema.org/educationRequirements",
            comment_lines: ["Educational background needed for the position or Occupation."].freeze,
            ranges: ["EducationalOccupationalCredential", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          estimated_salary: {
            schema_name: "estimatedSalary",
            schema_url: "https://schema.org/estimatedSalary",
            comment_lines: ["An estimated salary for a job posting or occupation, based on a variety of variables including, but not limited to industry, job title, and location. Estimated salaries  are often computed by outside organizations rather than the hiring organization, who may not have committed to the estimated value."].freeze,
            ranges: ["MonetaryAmount", "MonetaryAmountDistribution", "Number"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          experience_requirements: {
            schema_name: "experienceRequirements",
            schema_url: "https://schema.org/experienceRequirements",
            comment_lines: ["Description of skills and experience needed for the position or Occupation."].freeze,
            ranges: ["OccupationalExperienceRequirements", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          occupation_location: {
            schema_name: "occupationLocation",
            schema_url: "https://schema.org/occupationLocation",
            comment_lines: ["The region/country for which this occupational description is appropriate. Note that educational requirements and qualifications can vary between jurisdictions."].freeze,
            ranges: ["AdministrativeArea"].freeze,
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
          qualifications: {
            schema_name: "qualifications",
            schema_url: "https://schema.org/qualifications",
            comment_lines: ["Specific qualifications required for this role or Occupation."].freeze,
            ranges: ["Credential", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          responsibilities: {
            schema_name: "responsibilities",
            schema_url: "https://schema.org/responsibilities",
            comment_lines: ["Responsibilities associated with this role or Occupation."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          skills: {
            schema_name: "skills",
            schema_url: "https://schema.org/skills",
            comment_lines: ["A statement of knowledge, skill, ability, task or any other assertion expressing a competency that is either claimed by a person, an organization or desired or required to fulfill a role or to work in an occupation."].freeze,
            ranges: ["DefinedTerm", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # Educational background needed for the position or Occupation.
      def education_requirements
        read_property(:education_requirements)
      end

      # Educational background needed for the position or Occupation.
      def education_requirements=(value)
        write_property(:education_requirements, value)
      end

      # An estimated salary for a job posting or occupation, based on a variety of variables including, but not limited to industry, job title, and location. Estimated salaries  are often computed by outside organizations rather than the hiring organization, who may not have committed to the estimated value.
      def estimated_salary
        read_property(:estimated_salary)
      end

      # An estimated salary for a job posting or occupation, based on a variety of variables including, but not limited to industry, job title, and location. Estimated salaries  are often computed by outside organizations rather than the hiring organization, who may not have committed to the estimated value.
      def estimated_salary=(value)
        write_property(:estimated_salary, value)
      end

      # Description of skills and experience needed for the position or Occupation.
      def experience_requirements
        read_property(:experience_requirements)
      end

      # Description of skills and experience needed for the position or Occupation.
      def experience_requirements=(value)
        write_property(:experience_requirements, value)
      end

      # The region/country for which this occupational description is appropriate. Note that educational requirements and qualifications can vary between jurisdictions.
      def occupation_location
        read_property(:occupation_location)
      end

      # The region/country for which this occupational description is appropriate. Note that educational requirements and qualifications can vary between jurisdictions.
      def occupation_location=(value)
        write_property(:occupation_location, value)
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

      # Specific qualifications required for this role or Occupation.
      def qualifications
        read_property(:qualifications)
      end

      # Specific qualifications required for this role or Occupation.
      def qualifications=(value)
        write_property(:qualifications, value)
      end

      # Responsibilities associated with this role or Occupation.
      def responsibilities
        read_property(:responsibilities)
      end

      # Responsibilities associated with this role or Occupation.
      def responsibilities=(value)
        write_property(:responsibilities, value)
      end

      # A statement of knowledge, skill, ability, task or any other assertion expressing a competency that is either claimed by a person, an organization or desired or required to fulfill a role or to work in an occupation.
      def skills
        read_property(:skills)
      end

      # A statement of knowledge, skill, ability, task or any other assertion expressing a competency that is either claimed by a person, an organization or desired or required to fulfill a role or to work in an occupation.
      def skills=(value)
        write_property(:skills, value)
      end
    end
  end
end
