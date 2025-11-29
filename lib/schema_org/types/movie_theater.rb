module SchemaOrg
  # https://schema.org/MovieTheater
  #
  # A movie theater.
  class MovieTheater < Base
    include Mixins::MovieTheater
  end
end
