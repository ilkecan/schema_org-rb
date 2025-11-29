module SchemaOrg
  # https://schema.org/MovieSeries
  #
  # A series of movies. Included movies can be indicated with the hasPart property.
  class MovieSeries < Base
    include Mixins::MovieSeries
  end
end
