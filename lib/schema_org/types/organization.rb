module SchemaOrg
  # https://schema.org/Organization
  #
  # An organization such as a school, NGO, corporation, club, etc.
  class Organization < Base
    include Mixins::Organization
  end
end
