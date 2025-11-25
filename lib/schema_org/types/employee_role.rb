module SchemaOrg
  # https://schema.org/EmployeeRole
  #
  # A subclass of OrganizationRole used to describe employee relationships.
  class EmployeeRole
    include Mixins::EmployeeRole
  end
end
