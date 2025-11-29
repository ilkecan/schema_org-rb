module SchemaOrg
  # https://schema.org/VideoGameSeries
  #
  # A video game series.
  class VideoGameSeries < Base
    include Mixins::VideoGameSeries
  end
end
