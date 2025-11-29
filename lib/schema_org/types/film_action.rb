module SchemaOrg
  # https://schema.org/FilmAction
  #
  # The act of capturing sound and moving images on film, video, or digitally.
  class FilmAction < Base
    include Mixins::FilmAction
  end
end
