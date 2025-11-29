module SchemaOrg
  # https://schema.org/SportsTeam
  #
  # Organization: Sports team.
  class SportsTeam < Base
    include Mixins::SportsTeam
  end
end
