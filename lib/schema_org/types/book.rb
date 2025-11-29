module SchemaOrg
  # https://schema.org/Book
  #
  # A book.
  class Book < Base
    include Mixins::Book
  end
end
