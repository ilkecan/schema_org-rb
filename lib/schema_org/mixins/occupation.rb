module SchemaOrg
  module Mixins
    module Occupation
      include Intangible

      def self.schema_property_definitions
        {
          :education_requirements => {
            schema_name: "educationRequirements",
            ranges: ["Text"],
          }.freeze,
          :estimated_salary => {
            schema_name: "estimatedSalary",
            ranges: ["MonetaryAmount", "MonetaryAmountDistribution", "Number"],
          }.freeze,
          :experience_requirements => {
            schema_name: "experienceRequirements",
            ranges: ["Text"],
          }.freeze,
          :occupation_location => {
            schema_name: "occupationLocation",
            ranges: ["AdministrativeArea"],
          }.freeze,
          :occupational_category => {
            schema_name: "occupationalCategory",
            ranges: ["Text"],
          }.freeze,
          :qualifications => {
            schema_name: "qualifications",
            ranges: ["Text"],
          }.freeze,
          :responsibilities => {
            schema_name: "responsibilities",
            ranges: ["Text"],
          }.freeze,
          :skills => {
            schema_name: "skills",
            ranges: ["DefinedTerm", "Text"],
          }.freeze,
        }.freeze
      end

      def education_requirements
        read_property(:education_requirements)
      end

      def education_requirements=(value)
        write_property(:education_requirements, value)
      end

      def estimated_salary
        read_property(:estimated_salary)
      end

      def estimated_salary=(value)
        write_property(:estimated_salary, value)
      end

      def experience_requirements
        read_property(:experience_requirements)
      end

      def experience_requirements=(value)
        write_property(:experience_requirements, value)
      end

      def occupation_location
        read_property(:occupation_location)
      end

      def occupation_location=(value)
        write_property(:occupation_location, value)
      end

      def occupational_category
        read_property(:occupational_category)
      end

      def occupational_category=(value)
        write_property(:occupational_category, value)
      end

      def qualifications
        read_property(:qualifications)
      end

      def qualifications=(value)
        write_property(:qualifications, value)
      end

      def responsibilities
        read_property(:responsibilities)
      end

      def responsibilities=(value)
        write_property(:responsibilities, value)
      end

      def skills
        read_property(:skills)
      end

      def skills=(value)
        write_property(:skills, value)
      end

    end
  end
end
