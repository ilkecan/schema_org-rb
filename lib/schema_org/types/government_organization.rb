module SchemaOrg
  # https://schema.org/GovernmentOrganization
  #
  # A governmental organization or agency.
  class GovernmentOrganization < Base
    include Mixins::GovernmentOrganization
  end
end
