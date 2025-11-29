module SchemaOrg
  # https://schema.org/EducationalOrganization
  #
  # An educational organization.
  class EducationalOrganization < Base
    include Mixins::EducationalOrganization
  end
end
