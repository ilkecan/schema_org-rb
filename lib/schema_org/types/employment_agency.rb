module SchemaOrg
  # https://schema.org/EmploymentAgency
  #
  # An employment agency.
  class EmploymentAgency < Base
    include Mixins::EmploymentAgency
  end
end
