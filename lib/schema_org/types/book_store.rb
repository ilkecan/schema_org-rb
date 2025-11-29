module SchemaOrg
  # https://schema.org/BookStore
  #
  # A bookstore.
  class BookStore < Base
    include Mixins::BookStore
  end
end
