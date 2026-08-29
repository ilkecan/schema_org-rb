# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module JobPosting
      include Intangible

      def self.schema_property_definitions
        {
          applicant_location_requirements: {
            schema_name: "applicantLocationRequirements",
            schema_url: "https://schema.org/applicantLocationRequirements",
            comment_lines: ["The location(s) applicants can apply from. This is usually used for telecommuting jobs where the applicant does not need to be in a physical office. Note: This should not be used for citizenship or work visa requirements."].freeze,
            ranges: ["AdministrativeArea"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          application_contact: {
            schema_name: "applicationContact",
            schema_url: "https://schema.org/applicationContact",
            comment_lines: ["Contact details for further information relevant to this job posting."].freeze,
            ranges: ["ContactPoint"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          base_salary: {
            schema_name: "baseSalary",
            schema_url: "https://schema.org/baseSalary",
            comment_lines: ["The base salary of the job or of an employee in an EmployeeRole."].freeze,
            ranges: ["MonetaryAmount", "Number", "PriceSpecification"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          benefits: {
            schema_name: "benefits",
            schema_url: "https://schema.org/benefits",
            comment_lines: ["Description of benefits associated with the job."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: "jobBenefits",
            supersedes: nil
          }.freeze,
          date_posted: {
            schema_name: "datePosted",
            schema_url: "https://schema.org/datePosted",
            comment_lines: ["Publication date of an online listing."].freeze,
            ranges: ["Date", "DateTime"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          direct_apply: {
            schema_name: "directApply",
            schema_url: "https://schema.org/directApply",
            comment_lines: ["Indicates whether an [[url]] that is associated with a [[JobPosting]] enables direct application for the job, via the posting website. A job posting is considered to have directApply of [[True]] if an application process for the specified job can be directly initiated via the url(s) given (noting that e.g. multiple internet domains might nevertheless be involved at an implementation level). A value of [[False]] is appropriate if there is no clear path to applying directly online for the specified job, navigating directly from the JobPosting url(s) supplied."].freeze,
            ranges: ["Boolean"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
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
          eligibility_to_work_requirement: {
            schema_name: "eligibilityToWorkRequirement",
            schema_url: "https://schema.org/eligibilityToWorkRequirement",
            comment_lines: ["The legal requirements such as citizenship, visa and other documentation required for an applicant to this job."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          employer_overview: {
            schema_name: "employerOverview",
            schema_url: "https://schema.org/employerOverview",
            comment_lines: ["A description of the employer, career opportunities and work environment for this position."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          employment_type: {
            schema_name: "employmentType",
            schema_url: "https://schema.org/employmentType",
            comment_lines: ["Type of employment (e.g. full-time, part-time, contract, temporary, seasonal, internship)."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          employment_unit: {
            schema_name: "employmentUnit",
            schema_url: "https://schema.org/employmentUnit",
            comment_lines: ["Indicates the department, unit and/or facility where the employee reports and/or in which the job is to be performed."].freeze,
            ranges: ["Organization"].freeze,
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
          experience_in_place_of_education: {
            schema_name: "experienceInPlaceOfEducation",
            schema_url: "https://schema.org/experienceInPlaceOfEducation",
            comment_lines: ["Indicates whether a [[JobPosting]] will accept experience (as indicated by [[OccupationalExperienceRequirements]]) in place of its formal educational qualifications (as indicated by [[educationRequirements]]). If true, indicates that satisfying one of these requirements is sufficient."].freeze,
            ranges: ["Boolean"].freeze,
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
          hiring_organization: {
            schema_name: "hiringOrganization",
            schema_url: "https://schema.org/hiringOrganization",
            comment_lines: ["Organization or Person offering the job position."].freeze,
            ranges: ["Organization", "Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          incentive_compensation: {
            schema_name: "incentiveCompensation",
            schema_url: "https://schema.org/incentiveCompensation",
            comment_lines: ["Description of bonus and commission compensation aspects of the job."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: ["incentives"].freeze
          }.freeze,
          incentives: {
            schema_name: "incentives",
            schema_url: "https://schema.org/incentives",
            comment_lines: ["Description of bonus and commission compensation aspects of the job."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: "incentiveCompensation",
            supersedes: nil
          }.freeze,
          industry: {
            schema_name: "industry",
            schema_url: "https://schema.org/industry",
            comment_lines: ["The industry associated with the job position."].freeze,
            ranges: ["DefinedTerm", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          job_benefits: {
            schema_name: "jobBenefits",
            schema_url: "https://schema.org/jobBenefits",
            comment_lines: ["Description of benefits associated with the job."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: ["benefits"].freeze
          }.freeze,
          job_duration: {
            schema_name: "jobDuration",
            schema_url: "https://schema.org/jobDuration",
            comment_lines: ["The expected duration of an employment offer as advertised by the employer. Relevant for job postings that have a clearly defined period in mind such as seasonal work, substitutes for maternal leave or any other temporary employment."].freeze,
            ranges: ["Duration", "QuantitativeValue"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          job_immediate_start: {
            schema_name: "jobImmediateStart",
            schema_url: "https://schema.org/jobImmediateStart",
            comment_lines: ["An indicator as to whether a position is available for an immediate start."].freeze,
            ranges: ["Boolean"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          job_location: {
            schema_name: "jobLocation",
            schema_url: "https://schema.org/jobLocation",
            comment_lines: ["A (typically single) geographic location associated with the job position."].freeze,
            ranges: ["Place"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          job_location_type: {
            schema_name: "jobLocationType",
            schema_url: "https://schema.org/jobLocationType",
            comment_lines: ["A description of the job location (e.g. TELECOMMUTE for telecommute jobs)."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          job_start_date: {
            schema_name: "jobStartDate",
            schema_url: "https://schema.org/jobStartDate",
            comment_lines: ["The date on which a successful applicant for this job would be expected to start work. Choose a specific date in the future or use the jobImmediateStart property to indicate the position is to be filled as soon as possible."].freeze,
            ranges: ["Date", "Text"].freeze,
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
          physical_requirement: {
            schema_name: "physicalRequirement",
            schema_url: "https://schema.org/physicalRequirement",
            comment_lines: ["A description of the types of physical activity associated with the job. Defined terms such as those in O*net may be used, but note that there is no way to specify the level of ability as well as its nature when using a defined term."].freeze,
            ranges: ["DefinedTerm", "Text", "URL"].freeze,
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
          relevant_occupation: {
            schema_name: "relevantOccupation",
            schema_url: "https://schema.org/relevantOccupation",
            comment_lines: ["The Occupation for the JobPosting."].freeze,
            ranges: ["Occupation"].freeze,
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
          salary_currency: {
            schema_name: "salaryCurrency",
            schema_url: "https://schema.org/salaryCurrency",
            comment_lines: ["The currency (coded using [ISO 4217](http://en.wikipedia.org/wiki/ISO_4217)) used for the main salary information in this job posting or for this employee."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          security_clearance_requirement: {
            schema_name: "securityClearanceRequirement",
            schema_url: "https://schema.org/securityClearanceRequirement",
            comment_lines: ["A description of any security clearance requirements of the job."].freeze,
            ranges: ["Text", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          sensory_requirement: {
            schema_name: "sensoryRequirement",
            schema_url: "https://schema.org/sensoryRequirement",
            comment_lines: ["A description of any sensory requirements and levels necessary to function on the job, including hearing and vision. Defined terms such as those in O*net may be used, but note that there is no way to specify the level of ability as well as its nature when using a defined term."].freeze,
            ranges: ["DefinedTerm", "Text", "URL"].freeze,
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
          }.freeze,
          special_commitments: {
            schema_name: "specialCommitments",
            schema_url: "https://schema.org/specialCommitments",
            comment_lines: ["Any special commitments associated with this job posting. Valid entries include VeteranCommit, MilitarySpouseCommit, etc."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          title: {
            schema_name: "title",
            schema_url: "https://schema.org/title",
            comment_lines: ["The title of the job."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          total_job_openings: {
            schema_name: "totalJobOpenings",
            schema_url: "https://schema.org/totalJobOpenings",
            comment_lines: ["The number of positions open for this job posting. Use a positive integer. Do not use if the number of positions is unclear or not known."].freeze,
            ranges: ["Integer"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          valid_through: {
            schema_name: "validThrough",
            schema_url: "https://schema.org/validThrough",
            comment_lines: ["The date after when the item is not valid. For example the end of an offer, salary period, or a period of opening hours."].freeze,
            ranges: ["Date", "DateTime"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          work_hours: {
            schema_name: "workHours",
            schema_url: "https://schema.org/workHours",
            comment_lines: ["The typical working hours for this job (e.g. 1st shift, night shift, 8am-5pm)."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The location(s) applicants can apply from. This is usually used for telecommuting jobs where the applicant does not need to be in a physical office. Note: This should not be used for citizenship or work visa requirements.
      def applicant_location_requirements
        read_property(:applicant_location_requirements)
      end

      # The location(s) applicants can apply from. This is usually used for telecommuting jobs where the applicant does not need to be in a physical office. Note: This should not be used for citizenship or work visa requirements.
      def applicant_location_requirements=(value)
        write_property(:applicant_location_requirements, value)
      end

      # Contact details for further information relevant to this job posting.
      def application_contact
        read_property(:application_contact)
      end

      # Contact details for further information relevant to this job posting.
      def application_contact=(value)
        write_property(:application_contact, value)
      end

      # The base salary of the job or of an employee in an EmployeeRole.
      def base_salary
        read_property(:base_salary)
      end

      # The base salary of the job or of an employee in an EmployeeRole.
      def base_salary=(value)
        write_property(:base_salary, value)
      end

      # Description of benefits associated with the job.
      # Superseded by `jobBenefits`.
      def benefits
        read_property(:benefits)
      end

      # Description of benefits associated with the job.
      # Superseded by `jobBenefits`.
      def benefits=(value)
        write_property(:benefits, value)
      end

      # Publication date of an online listing.
      def date_posted
        read_property(:date_posted)
      end

      # Publication date of an online listing.
      def date_posted=(value)
        write_property(:date_posted, value)
      end

      # Indicates whether an [[url]] that is associated with a [[JobPosting]] enables direct application for the job, via the posting website. A job posting is considered to have directApply of [[True]] if an application process for the specified job can be directly initiated via the url(s) given (noting that e.g. multiple internet domains might nevertheless be involved at an implementation level). A value of [[False]] is appropriate if there is no clear path to applying directly online for the specified job, navigating directly from the JobPosting url(s) supplied.
      def direct_apply
        read_property(:direct_apply)
      end

      # Indicates whether an [[url]] that is associated with a [[JobPosting]] enables direct application for the job, via the posting website. A job posting is considered to have directApply of [[True]] if an application process for the specified job can be directly initiated via the url(s) given (noting that e.g. multiple internet domains might nevertheless be involved at an implementation level). A value of [[False]] is appropriate if there is no clear path to applying directly online for the specified job, navigating directly from the JobPosting url(s) supplied.
      def direct_apply=(value)
        write_property(:direct_apply, value)
      end

      # Educational background needed for the position or Occupation.
      def education_requirements
        read_property(:education_requirements)
      end

      # Educational background needed for the position or Occupation.
      def education_requirements=(value)
        write_property(:education_requirements, value)
      end

      # The legal requirements such as citizenship, visa and other documentation required for an applicant to this job.
      def eligibility_to_work_requirement
        read_property(:eligibility_to_work_requirement)
      end

      # The legal requirements such as citizenship, visa and other documentation required for an applicant to this job.
      def eligibility_to_work_requirement=(value)
        write_property(:eligibility_to_work_requirement, value)
      end

      # A description of the employer, career opportunities and work environment for this position.
      def employer_overview
        read_property(:employer_overview)
      end

      # A description of the employer, career opportunities and work environment for this position.
      def employer_overview=(value)
        write_property(:employer_overview, value)
      end

      # Type of employment (e.g. full-time, part-time, contract, temporary, seasonal, internship).
      def employment_type
        read_property(:employment_type)
      end

      # Type of employment (e.g. full-time, part-time, contract, temporary, seasonal, internship).
      def employment_type=(value)
        write_property(:employment_type, value)
      end

      # Indicates the department, unit and/or facility where the employee reports and/or in which the job is to be performed.
      def employment_unit
        read_property(:employment_unit)
      end

      # Indicates the department, unit and/or facility where the employee reports and/or in which the job is to be performed.
      def employment_unit=(value)
        write_property(:employment_unit, value)
      end

      # An estimated salary for a job posting or occupation, based on a variety of variables including, but not limited to industry, job title, and location. Estimated salaries  are often computed by outside organizations rather than the hiring organization, who may not have committed to the estimated value.
      def estimated_salary
        read_property(:estimated_salary)
      end

      # An estimated salary for a job posting or occupation, based on a variety of variables including, but not limited to industry, job title, and location. Estimated salaries  are often computed by outside organizations rather than the hiring organization, who may not have committed to the estimated value.
      def estimated_salary=(value)
        write_property(:estimated_salary, value)
      end

      # Indicates whether a [[JobPosting]] will accept experience (as indicated by [[OccupationalExperienceRequirements]]) in place of its formal educational qualifications (as indicated by [[educationRequirements]]). If true, indicates that satisfying one of these requirements is sufficient.
      def experience_in_place_of_education
        read_property(:experience_in_place_of_education)
      end

      # Indicates whether a [[JobPosting]] will accept experience (as indicated by [[OccupationalExperienceRequirements]]) in place of its formal educational qualifications (as indicated by [[educationRequirements]]). If true, indicates that satisfying one of these requirements is sufficient.
      def experience_in_place_of_education=(value)
        write_property(:experience_in_place_of_education, value)
      end

      # Description of skills and experience needed for the position or Occupation.
      def experience_requirements
        read_property(:experience_requirements)
      end

      # Description of skills and experience needed for the position or Occupation.
      def experience_requirements=(value)
        write_property(:experience_requirements, value)
      end

      # Organization or Person offering the job position.
      def hiring_organization
        read_property(:hiring_organization)
      end

      # Organization or Person offering the job position.
      def hiring_organization=(value)
        write_property(:hiring_organization, value)
      end

      # Description of bonus and commission compensation aspects of the job.
      # Supersedes `incentives`.
      def incentive_compensation
        read_property(:incentive_compensation)
      end

      # Description of bonus and commission compensation aspects of the job.
      # Supersedes `incentives`.
      def incentive_compensation=(value)
        write_property(:incentive_compensation, value)
      end

      # Description of bonus and commission compensation aspects of the job.
      # Superseded by `incentiveCompensation`.
      def incentives
        read_property(:incentives)
      end

      # Description of bonus and commission compensation aspects of the job.
      # Superseded by `incentiveCompensation`.
      def incentives=(value)
        write_property(:incentives, value)
      end

      # The industry associated with the job position.
      def industry
        read_property(:industry)
      end

      # The industry associated with the job position.
      def industry=(value)
        write_property(:industry, value)
      end

      # Description of benefits associated with the job.
      # Supersedes `benefits`.
      def job_benefits
        read_property(:job_benefits)
      end

      # Description of benefits associated with the job.
      # Supersedes `benefits`.
      def job_benefits=(value)
        write_property(:job_benefits, value)
      end

      # The expected duration of an employment offer as advertised by the employer. Relevant for job postings that have a clearly defined period in mind such as seasonal work, substitutes for maternal leave or any other temporary employment.
      def job_duration
        read_property(:job_duration)
      end

      # The expected duration of an employment offer as advertised by the employer. Relevant for job postings that have a clearly defined period in mind such as seasonal work, substitutes for maternal leave or any other temporary employment.
      def job_duration=(value)
        write_property(:job_duration, value)
      end

      # An indicator as to whether a position is available for an immediate start.
      def job_immediate_start
        read_property(:job_immediate_start)
      end

      # An indicator as to whether a position is available for an immediate start.
      def job_immediate_start=(value)
        write_property(:job_immediate_start, value)
      end

      # A (typically single) geographic location associated with the job position.
      def job_location
        read_property(:job_location)
      end

      # A (typically single) geographic location associated with the job position.
      def job_location=(value)
        write_property(:job_location, value)
      end

      # A description of the job location (e.g. TELECOMMUTE for telecommute jobs).
      def job_location_type
        read_property(:job_location_type)
      end

      # A description of the job location (e.g. TELECOMMUTE for telecommute jobs).
      def job_location_type=(value)
        write_property(:job_location_type, value)
      end

      # The date on which a successful applicant for this job would be expected to start work. Choose a specific date in the future or use the jobImmediateStart property to indicate the position is to be filled as soon as possible.
      def job_start_date
        read_property(:job_start_date)
      end

      # The date on which a successful applicant for this job would be expected to start work. Choose a specific date in the future or use the jobImmediateStart property to indicate the position is to be filled as soon as possible.
      def job_start_date=(value)
        write_property(:job_start_date, value)
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

      # A description of the types of physical activity associated with the job. Defined terms such as those in O*net may be used, but note that there is no way to specify the level of ability as well as its nature when using a defined term.
      def physical_requirement
        read_property(:physical_requirement)
      end

      # A description of the types of physical activity associated with the job. Defined terms such as those in O*net may be used, but note that there is no way to specify the level of ability as well as its nature when using a defined term.
      def physical_requirement=(value)
        write_property(:physical_requirement, value)
      end

      # Specific qualifications required for this role or Occupation.
      def qualifications
        read_property(:qualifications)
      end

      # Specific qualifications required for this role or Occupation.
      def qualifications=(value)
        write_property(:qualifications, value)
      end

      # The Occupation for the JobPosting.
      def relevant_occupation
        read_property(:relevant_occupation)
      end

      # The Occupation for the JobPosting.
      def relevant_occupation=(value)
        write_property(:relevant_occupation, value)
      end

      # Responsibilities associated with this role or Occupation.
      def responsibilities
        read_property(:responsibilities)
      end

      # Responsibilities associated with this role or Occupation.
      def responsibilities=(value)
        write_property(:responsibilities, value)
      end

      # The currency (coded using [ISO 4217](http://en.wikipedia.org/wiki/ISO_4217)) used for the main salary information in this job posting or for this employee.
      def salary_currency
        read_property(:salary_currency)
      end

      # The currency (coded using [ISO 4217](http://en.wikipedia.org/wiki/ISO_4217)) used for the main salary information in this job posting or for this employee.
      def salary_currency=(value)
        write_property(:salary_currency, value)
      end

      # A description of any security clearance requirements of the job.
      def security_clearance_requirement
        read_property(:security_clearance_requirement)
      end

      # A description of any security clearance requirements of the job.
      def security_clearance_requirement=(value)
        write_property(:security_clearance_requirement, value)
      end

      # A description of any sensory requirements and levels necessary to function on the job, including hearing and vision. Defined terms such as those in O*net may be used, but note that there is no way to specify the level of ability as well as its nature when using a defined term.
      def sensory_requirement
        read_property(:sensory_requirement)
      end

      # A description of any sensory requirements and levels necessary to function on the job, including hearing and vision. Defined terms such as those in O*net may be used, but note that there is no way to specify the level of ability as well as its nature when using a defined term.
      def sensory_requirement=(value)
        write_property(:sensory_requirement, value)
      end

      # A statement of knowledge, skill, ability, task or any other assertion expressing a competency that is either claimed by a person, an organization or desired or required to fulfill a role or to work in an occupation.
      def skills
        read_property(:skills)
      end

      # A statement of knowledge, skill, ability, task or any other assertion expressing a competency that is either claimed by a person, an organization or desired or required to fulfill a role or to work in an occupation.
      def skills=(value)
        write_property(:skills, value)
      end

      # Any special commitments associated with this job posting. Valid entries include VeteranCommit, MilitarySpouseCommit, etc.
      def special_commitments
        read_property(:special_commitments)
      end

      # Any special commitments associated with this job posting. Valid entries include VeteranCommit, MilitarySpouseCommit, etc.
      def special_commitments=(value)
        write_property(:special_commitments, value)
      end

      # The title of the job.
      def title
        read_property(:title)
      end

      # The title of the job.
      def title=(value)
        write_property(:title, value)
      end

      # The number of positions open for this job posting. Use a positive integer. Do not use if the number of positions is unclear or not known.
      def total_job_openings
        read_property(:total_job_openings)
      end

      # The number of positions open for this job posting. Use a positive integer. Do not use if the number of positions is unclear or not known.
      def total_job_openings=(value)
        write_property(:total_job_openings, value)
      end

      # The date after when the item is not valid. For example the end of an offer, salary period, or a period of opening hours.
      def valid_through
        read_property(:valid_through)
      end

      # The date after when the item is not valid. For example the end of an offer, salary period, or a period of opening hours.
      def valid_through=(value)
        write_property(:valid_through, value)
      end

      # The typical working hours for this job (e.g. 1st shift, night shift, 8am-5pm).
      def work_hours
        read_property(:work_hours)
      end

      # The typical working hours for this job (e.g. 1st shift, night shift, 8am-5pm).
      def work_hours=(value)
        write_property(:work_hours, value)
      end
    end
  end
end
