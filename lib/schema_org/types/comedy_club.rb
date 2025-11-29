module SchemaOrg
  # https://schema.org/ComedyClub
  #
  # A comedy club.
  class ComedyClub < Base
    include Mixins::ComedyClub
  end
end
