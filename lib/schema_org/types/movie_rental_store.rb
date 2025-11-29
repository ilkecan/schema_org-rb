module SchemaOrg
  # https://schema.org/MovieRentalStore
  #
  # A movie rental store.
  class MovieRentalStore < Base
    include Mixins::MovieRentalStore
  end
end
