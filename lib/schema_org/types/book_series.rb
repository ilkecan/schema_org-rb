module SchemaOrg
  # https://schema.org/BookSeries
  #
  # A series of books. Included books can be indicated with the hasPart property.
  class BookSeries < Base
    include Mixins::BookSeries
  end
end
