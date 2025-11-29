module SchemaOrg
  # https://schema.org/CreativeWorkSeason
  #
  # A media season, e.g. TV, radio, video game etc.
  class CreativeWorkSeason < Base
    include Mixins::CreativeWorkSeason
  end
end
