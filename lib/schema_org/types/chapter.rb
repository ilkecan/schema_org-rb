# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/Chapter
  #
  # One of the sections into which a book is divided. A chapter usually has a section number or a name.
  class Chapter < Base
    include Mixins::Chapter

    SCHEMA_NAME = "Chapter"
    SCHEMA_TYPES = [self, SchemaOrg::CreativeWork, SchemaOrg::Thing].freeze

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
  end
end
