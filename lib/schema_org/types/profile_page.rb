module SchemaOrg
  # https://schema.org/ProfilePage
  #
  # Web page type: Profile page.
  class ProfilePage < Base
    include Mixins::ProfilePage
  end
end
