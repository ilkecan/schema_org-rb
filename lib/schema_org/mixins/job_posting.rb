module SchemaOrg
  module Mixins
    module JobPosting
      include Intangible

      def self.schema_property_definitions
        {
          :base_salary => {
            schema_name: "baseSalary",
            ranges: ["MonetaryAmount", "Number", "PriceSpecification"],
          }.freeze,
          :benefits => {
            schema_name: "benefits",
            ranges: ["Text"],
          }.freeze,
          :date_posted => {
            schema_name: "datePosted",
            ranges: ["Date"],
          }.freeze,
          :education_requirements => {
            schema_name: "educationRequirements",
            ranges: ["Text"],
          }.freeze,
          :employment_type => {
            schema_name: "employmentType",
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
          :hiring_organization => {
            schema_name: "hiringOrganization",
            ranges: ["Organization", "Person"],
          }.freeze,
          :incentive_compensation => {
            schema_name: "incentiveCompensation",
            ranges: ["Text"],
          }.freeze,
          :incentives => {
            schema_name: "incentives",
            ranges: ["Text"],
          }.freeze,
          :industry => {
            schema_name: "industry",
            ranges: ["DefinedTerm", "Text"],
          }.freeze,
          :job_benefits => {
            schema_name: "jobBenefits",
            ranges: ["Text"],
          }.freeze,
          :job_location => {
            schema_name: "jobLocation",
            ranges: ["Place"],
          }.freeze,
          :occupational_category => {
            schema_name: "occupationalCategory",
            ranges: ["Text"],
          }.freeze,
          :qualifications => {
            schema_name: "qualifications",
            ranges: ["Text"],
          }.freeze,
          :relevant_occupation => {
            schema_name: "relevantOccupation",
            ranges: ["Occupation"],
          }.freeze,
          :responsibilities => {
            schema_name: "responsibilities",
            ranges: ["Text"],
          }.freeze,
          :salary_currency => {
            schema_name: "salaryCurrency",
            ranges: ["Text"],
          }.freeze,
          :skills => {
            schema_name: "skills",
            ranges: ["DefinedTerm", "Text"],
          }.freeze,
          :special_commitments => {
            schema_name: "specialCommitments",
            ranges: ["Text"],
          }.freeze,
          :title => {
            schema_name: "title",
            ranges: ["Text"],
          }.freeze,
          :valid_through => {
            schema_name: "validThrough",
            ranges: ["Date", "DateTime"],
          }.freeze,
          :work_hours => {
            schema_name: "workHours",
            ranges: ["Text"],
          }.freeze,
        }.freeze
      end

      def base_salary
        read_property(:base_salary)
      end

      def base_salary=(value)
        write_property(:base_salary, value)
      end

      def benefits
        read_property(:benefits)
      end

      def benefits=(value)
        write_property(:benefits, value)
      end

      def date_posted
        read_property(:date_posted)
      end

      def date_posted=(value)
        write_property(:date_posted, value)
      end

      def education_requirements
        read_property(:education_requirements)
      end

      def education_requirements=(value)
        write_property(:education_requirements, value)
      end

      def employment_type
        read_property(:employment_type)
      end

      def employment_type=(value)
        write_property(:employment_type, value)
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

      def hiring_organization
        read_property(:hiring_organization)
      end

      def hiring_organization=(value)
        write_property(:hiring_organization, value)
      end

      def incentive_compensation
        read_property(:incentive_compensation)
      end

      def incentive_compensation=(value)
        write_property(:incentive_compensation, value)
      end

      def incentives
        read_property(:incentives)
      end

      def incentives=(value)
        write_property(:incentives, value)
      end

      def industry
        read_property(:industry)
      end

      def industry=(value)
        write_property(:industry, value)
      end

      def job_benefits
        read_property(:job_benefits)
      end

      def job_benefits=(value)
        write_property(:job_benefits, value)
      end

      def job_location
        read_property(:job_location)
      end

      def job_location=(value)
        write_property(:job_location, value)
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

      def relevant_occupation
        read_property(:relevant_occupation)
      end

      def relevant_occupation=(value)
        write_property(:relevant_occupation, value)
      end

      def responsibilities
        read_property(:responsibilities)
      end

      def responsibilities=(value)
        write_property(:responsibilities, value)
      end

      def salary_currency
        read_property(:salary_currency)
      end

      def salary_currency=(value)
        write_property(:salary_currency, value)
      end

      def skills
        read_property(:skills)
      end

      def skills=(value)
        write_property(:skills, value)
      end

      def special_commitments
        read_property(:special_commitments)
      end

      def special_commitments=(value)
        write_property(:special_commitments, value)
      end

      def title
        read_property(:title)
      end

      def title=(value)
        write_property(:title, value)
      end

      def valid_through
        read_property(:valid_through)
      end

      def valid_through=(value)
        write_property(:valid_through, value)
      end

      def work_hours
        read_property(:work_hours)
      end

      def work_hours=(value)
        write_property(:work_hours, value)
      end

    end
  end
end
