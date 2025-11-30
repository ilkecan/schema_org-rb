module SchemaOrg
  # https://schema.org/Season
  #
  # NOTE: Superseded by `CreativeWorkSeason`.
  #
  # A media season, e.g. TV, radio, video game etc.
  class Season < Base
    include Mixins::Season
  end
end
