module SchemaOrg
  # https://schema.org/TVEpisode
  #
  # A TV episode which can be part of a series or season.
  class TVEpisode < Base
    include Mixins::TVEpisode
  end
end
