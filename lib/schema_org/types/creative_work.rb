module SchemaOrg
  # https://schema.org/CreativeWork
  #
  # The most generic kind of creative work, including books, movies, photographs, software programs, etc.
  class CreativeWork < Base
    include Mixins::CreativeWork
  end
end
