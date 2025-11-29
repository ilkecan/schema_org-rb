module SchemaOrg
  # https://schema.org/Movie
  #
  # A movie.
  class Movie < Base
    include Mixins::Movie
  end
end
