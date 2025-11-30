require "active_support/concern"

module SchemaOrg
  module Mixins
    module JobPosting
      extend ActiveSupport::Concern

      include Intangible

      included do
        option :base_salary # The base salary of the job or of an employee in an EmployeeRole.
        option :benefits # Description of benefits associated with the job. Superseded by `job_benefits`.
        option :date_posted # Publication date of an online listing.
        option :education_requirements # Educational background needed for the position or Occupation.
        option :employment_type # Type of employment (e.g. full-time, part-time, contract, temporary, seasonal, internship).
        option :estimated_salary # An estimated salary for a job posting or occupation, based on a variety of variables including, but not limited to industry, job title, and location. Estimated salaries  are often computed by outside organizations rather than the hiring organization, who may not have committed to the estimated value.
        option :experience_requirements # Description of skills and experience needed for the position or Occupation.
        option :hiring_organization # Organization or Person offering the job position.
        option :incentives # Description of bonus and commission compensation aspects of the job. Superseded by `incentive_compensation`.
        option :industry # The industry associated with the job position.
        option :job_location # A (typically single) geographic location associated with the job position.
        option :occupational_category # A category describing the job, preferably using a term from a taxonomy such as [BLS O*NET-SOC](http://www.onetcenter.org/taxonomy.html), [ISCO-08](https://www.ilo.org/public/english/bureau/stat/isco/isco08/) or similar, with the property repeated for each applicable value. Ideally the taxonomy should be identified, and both the textual label and formal code for the category should be provided.\n Note: for historical reasons, any textual label and formal code provided as a literal may be assumed to be from O*NET-SOC.
        option :qualifications # Specific qualifications required for this role or Occupation.
        option :relevant_occupation # The Occupation for the JobPosting.
        option :responsibilities # Responsibilities associated with this role or Occupation.
        option :salary_currency # The currency (coded using [ISO 4217](http://en.wikipedia.org/wiki/ISO_4217)) used for the main salary information in this job posting or for this employee.
        option :skills # A statement of knowledge, skill, ability, task or any other assertion expressing a competency that is either claimed by a person, an organization or desired or required to fulfill a role or to work in an occupation.
        option :special_commitments # Any special commitments associated with this job posting. Valid entries include VeteranCommit, MilitarySpouseCommit, etc.
        option :title # The title of the job.
        option :valid_through # The date after when the item is not valid. For example the end of an offer, salary period, or a period of opening hours.
        option :work_hours # The typical working hours for this job (e.g. 1st shift, night shift, 8am-5pm).
        option :incentive_compensation # Description of bonus and commission compensation aspects of the job. Supersedes `incentives`.
        option :job_benefits # Description of benefits associated with the job. Supersedes `benefits`.
      end
    end
  end
end
