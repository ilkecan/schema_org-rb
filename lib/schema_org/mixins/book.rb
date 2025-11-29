require "active_support/concern"

module SchemaOrg
  module Mixins
    module Book
      extend ActiveSupport::Concern

      include CreativeWork

      included do
        option :book_edition # The edition of the book.
        option :book_format # The format of the book.
        option :illustrator # The illustrator of the book.
        option :isbn # The ISBN of the book.
        option :number_of_pages # The number of pages in the book.
      end
    end
  end
end
