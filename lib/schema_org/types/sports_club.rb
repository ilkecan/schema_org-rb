module SchemaOrg
  # https://schema.org/SportsClub
  #
  # A sports club.
  class SportsClub < Base
    include Mixins::SportsClub
  end
end
