module SchemaOrg
  # https://schema.org/RadioEpisode
  #
  # A radio episode which can be part of a series or season.
  class RadioEpisode < Base
    include Mixins::RadioEpisode
  end
end
