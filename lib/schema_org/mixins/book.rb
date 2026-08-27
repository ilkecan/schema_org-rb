# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module Book
      include CreativeWork

      def self.schema_property_definitions
        {
          abridged: {
            schema_name: "abridged",
            schema_url: "https://schema.org/abridged",
            comment_lines: ["Indicates whether the book is an abridged edition."].freeze,
            ranges: ["Boolean"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          book_edition: {
            schema_name: "bookEdition",
            schema_url: "https://schema.org/bookEdition",
            comment_lines: ["The edition of the book."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          book_format: {
            schema_name: "bookFormat",
            schema_url: "https://schema.org/bookFormat",
            comment_lines: ["The format of the book."].freeze,
            ranges: ["BookFormatType"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          illustrator: {
            schema_name: "illustrator",
            schema_url: "https://schema.org/illustrator",
            comment_lines: ["The illustrator of the book."].freeze,
            ranges: ["Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          isbn: {
            schema_name: "isbn",
            schema_url: "https://schema.org/isbn",
            comment_lines: ["The ISBN of the book."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          number_of_pages: {
            schema_name: "numberOfPages",
            schema_url: "https://schema.org/numberOfPages",
            comment_lines: ["The number of pages in the book."].freeze,
            ranges: ["Integer"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # Indicates whether the book is an abridged edition.
      def abridged
        read_property(:abridged)
      end

      # Indicates whether the book is an abridged edition.
      def abridged=(value)
        write_property(:abridged, value)
      end

      # The edition of the book.
      def book_edition
        read_property(:book_edition)
      end

      # The edition of the book.
      def book_edition=(value)
        write_property(:book_edition, value)
      end

      # The format of the book.
      def book_format
        read_property(:book_format)
      end

      # The format of the book.
      def book_format=(value)
        write_property(:book_format, value)
      end

      # The illustrator of the book.
      def illustrator
        read_property(:illustrator)
      end

      # The illustrator of the book.
      def illustrator=(value)
        write_property(:illustrator, value)
      end

      # The ISBN of the book.
      def isbn
        read_property(:isbn)
      end

      # The ISBN of the book.
      def isbn=(value)
        write_property(:isbn, value)
      end

      # The number of pages in the book.
      def number_of_pages
        read_property(:number_of_pages)
      end

      # The number of pages in the book.
      def number_of_pages=(value)
        write_property(:number_of_pages, value)
      end
    end
  end
end
