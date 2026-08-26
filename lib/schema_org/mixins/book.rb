module SchemaOrg
  module Mixins
    module Book
      include CreativeWork

      def self.schema_property_definitions
        {
          :book_edition => {
            schema_name: "bookEdition",
            ranges: ["Text"],
          }.freeze,
          :book_format => {
            schema_name: "bookFormat",
            ranges: ["BookFormatType"],
          }.freeze,
          :illustrator => {
            schema_name: "illustrator",
            ranges: ["Person"],
          }.freeze,
          :isbn => {
            schema_name: "isbn",
            ranges: ["Text"],
          }.freeze,
          :number_of_pages => {
            schema_name: "numberOfPages",
            ranges: ["Integer"],
          }.freeze,
        }.freeze
      end

      def book_edition
        read_property(:book_edition)
      end

      def book_edition=(value)
        write_property(:book_edition, value)
      end

      def book_format
        read_property(:book_format)
      end

      def book_format=(value)
        write_property(:book_format, value)
      end

      def illustrator
        read_property(:illustrator)
      end

      def illustrator=(value)
        write_property(:illustrator, value)
      end

      def isbn
        read_property(:isbn)
      end

      def isbn=(value)
        write_property(:isbn, value)
      end

      def number_of_pages
        read_property(:number_of_pages)
      end

      def number_of_pages=(value)
        write_property(:number_of_pages, value)
      end

    end
  end
end
