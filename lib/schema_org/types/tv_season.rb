module SchemaOrg
  # https://schema.org/TVSeason
  #
  # Season dedicated to TV broadcast and associated online delivery.
  class TVSeason < Base
    include Mixins::TVSeason
  end
end
