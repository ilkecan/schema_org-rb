require "active_support/concern"

module SchemaOrg
  module Mixins
    module Occupation
      extend ActiveSupport::Concern

      include Intangible

      included do
        option :education_requirements # Educational background needed for the position or Occupation.
        option :estimated_salary # An estimated salary for a job posting or occupation, based on a variety of variables including, but not limited to industry, job title, and location. Estimated salaries  are often computed by outside organizations rather than the hiring organization, who may not have committed to the estimated value.
        option :experience_requirements # Description of skills and experience needed for the position or Occupation.
        option :occupation_location # The region/country for which this occupational description is appropriate. Note that educational requirements and qualifications can vary between jurisdictions.
        option :occupational_category # A category describing the job, preferably using a term from a taxonomy such as [BLS O*NET-SOC](http://www.onetcenter.org/taxonomy.html), [ISCO-08](https://www.ilo.org/public/english/bureau/stat/isco/isco08/) or similar, with the property repeated for each applicable value. Ideally the taxonomy should be identified, and both the textual label and formal code for the category should be provided.\n Note: for historical reasons, any textual label and formal code provided as a literal may be assumed to be from O*NET-SOC.
        option :qualifications # Specific qualifications required for this role or Occupation.
        option :responsibilities # Responsibilities associated with this role or Occupation.
        option :skills # A statement of knowledge, skill, ability, task or any other assertion expressing a competency that is either claimed by a person, an organization or desired or required to fulfill a role or to work in an occupation.
      end
    end
  end
end
