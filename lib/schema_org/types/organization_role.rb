module SchemaOrg
  # https://schema.org/OrganizationRole
  #
  # A subclass of Role used to describe roles within organizations.
  class OrganizationRole < Base
    include Mixins::OrganizationRole
  end
end
