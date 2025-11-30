require "active_support/concern"

module SchemaOrg
  module Mixins
    module JobPosting
      extend ActiveSupport::Concern

      include Intangible

      included do
        option :base_salary, optional: true # The base salary of the job or of an employee in an EmployeeRole.
        option :benefits, optional: true # Description of benefits associated with the job. Superseded by `job_benefits`.
        option :date_posted, optional: true # Publication date of an online listing.
        option :education_requirements, optional: true # Educational background needed for the position or Occupation.
        option :employment_type, optional: true # Type of employment (e.g. full-time, part-time, contract, temporary, seasonal, internship).
        option :estimated_salary, optional: true # An estimated salary for a job posting or occupation, based on a variety of variables including, but not limited to industry, job title, and location. Estimated salaries  are often computed by outside organizations rather than the hiring organization, who may not have committed to the estimated value.
        option :experience_requirements, optional: true # Description of skills and experience needed for the position or Occupation.
        option :hiring_organization, optional: true # Organization or Person offering the job position.
        option :incentives, optional: true # Description of bonus and commission compensation aspects of the job. Superseded by `incentive_compensation`.
        option :industry, optional: true # The industry associated with the job position.
        option :job_location, optional: true # A (typically single) geographic location associated with the job position.
        option :occupational_category, optional: true # A category describing the job, preferably using a term from a taxonomy such as [BLS O*NET-SOC](http://www.onetcenter.org/taxonomy.html), [ISCO-08](https://www.ilo.org/public/english/bureau/stat/isco/isco08/) or similar, with the property repeated for each applicable value. Ideally the taxonomy should be identified, and both the textual label and formal code for the category should be provided.\n Note: for historical reasons, any textual label and formal code provided as a literal may be assumed to be from O*NET-SOC.
        option :qualifications, optional: true # Specific qualifications required for this role or Occupation.
        option :relevant_occupation, optional: true # The Occupation for the JobPosting.
        option :responsibilities, optional: true # Responsibilities associated with this role or Occupation.
        option :salary_currency, optional: true # The currency (coded using [ISO 4217](http://en.wikipedia.org/wiki/ISO_4217)) used for the main salary information in this job posting or for this employee.
        option :skills, optional: true # A statement of knowledge, skill, ability, task or any other assertion expressing a competency that is either claimed by a person, an organization or desired or required to fulfill a role or to work in an occupation.
        option :special_commitments, optional: true # Any special commitments associated with this job posting. Valid entries include VeteranCommit, MilitarySpouseCommit, etc.
        option :title, optional: true # The title of the job.
        option :valid_through, optional: true # The date after when the item is not valid. For example the end of an offer, salary period, or a period of opening hours.
        option :work_hours, optional: true # The typical working hours for this job (e.g. 1st shift, night shift, 8am-5pm).
        option :incentive_compensation, optional: true # Description of bonus and commission compensation aspects of the job. Supersedes `incentives`.
        option :job_benefits, optional: true # Description of benefits associated with the job. Supersedes `benefits`.
      end
    end
  end
end
