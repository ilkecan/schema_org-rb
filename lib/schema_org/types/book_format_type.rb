module SchemaOrg
  # https://schema.org/BookFormatType
  #
  # The publication format of the book.
  class BookFormatType < Base
    include Mixins::BookFormatType
    SCHEMA_TYPES = [self, SchemaOrg::Enumeration, SchemaOrg::Intangible, SchemaOrg::Thing].freeze

    class << self
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
    AUDIOBOOK_FORMAT = EnumerationValue.new("AudiobookFormat", self, [SchemaOrg::BookFormatType]).freeze
    E_BOOK = EnumerationValue.new("EBook", self, [SchemaOrg::BookFormatType]).freeze
    HARDCOVER = EnumerationValue.new("Hardcover", self, [SchemaOrg::BookFormatType]).freeze
    PAPERBACK = EnumerationValue.new("Paperback", self, [SchemaOrg::BookFormatType]).freeze
    VALUES = [AUDIOBOOK_FORMAT, E_BOOK, HARDCOVER, PAPERBACK].freeze

    def self.values
      VALUES
    end
  end
end
