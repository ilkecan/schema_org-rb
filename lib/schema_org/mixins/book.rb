require "active_support/concern"

module SchemaOrg
  module Mixins
    module Book
      extend ActiveSupport::Concern

      include CreativeWork

      included do
        option :book_edition, optional: true # The edition of the book.
        option :book_format, optional: true # The format of the book.
        option :illustrator, optional: true # The illustrator of the book.
        option :isbn, optional: true # The ISBN of the book.
        option :number_of_pages, optional: true # The number of pages in the book.
      end
    end
  end
end
