# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  # https://schema.org/BookFormatType
  #
  # The publication format of the book.
  class BookFormatType < Base
    include Mixins::BookFormatType

    SCHEMA_NAME = "BookFormatType"
    SCHEMA_TYPES = [self, SchemaOrg::Enumeration, SchemaOrg::Intangible, SchemaOrg::Thing].freeze

    class << self
      def schema_name
        SCHEMA_NAME
      end

      def schema_types
        SCHEMA_TYPES
      end

      def schema_type?(other_type)
        Base.schema_type_argument!(other_type)
        SCHEMA_TYPES.include?(other_type)
      end

      def new(**properties)
        super
      end
    end
    AUDIOBOOK_FORMAT = EnumerationValue.new("AudiobookFormat", [SchemaOrg::BookFormatType])
    E_BOOK = EnumerationValue.new("EBook", [SchemaOrg::BookFormatType])
    GRAPHIC_NOVEL = EnumerationValue.new("GraphicNovel", [SchemaOrg::BookFormatType])
    HARDCOVER = EnumerationValue.new("Hardcover", [SchemaOrg::BookFormatType])
    PAMPHLET = EnumerationValue.new("Pamphlet", [SchemaOrg::BookFormatType])
    PAPERBACK = EnumerationValue.new("Paperback", [SchemaOrg::BookFormatType])
    VALUES = [AUDIOBOOK_FORMAT, E_BOOK, GRAPHIC_NOVEL, HARDCOVER, PAMPHLET, PAPERBACK].freeze

    def self.values
      VALUES
    end
  end
end
