require "active_support/concern"

module SchemaOrg
  module Mixins
    module EmployeeRole
      extend ActiveSupport::Concern

      include OrganizationRole

      included do
        option :base_salary # The base salary of the job or of an employee in an EmployeeRole.
        option :salary_currency # The currency (coded using [ISO 4217](http://en.wikipedia.org/wiki/ISO_4217)) used for the main salary information in this job posting or for this employee.
      end
    end
  end
end
