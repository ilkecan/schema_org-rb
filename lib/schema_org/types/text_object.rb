module SchemaOrg
  # https://schema.org/TextObject
  #
  # A text file. The text can be unformatted or contain markup, html, etc.
  class TextObject < Base
    include Mixins::TextObject
    SCHEMA_TYPES = [self, SchemaOrg::MediaObject, SchemaOrg::CreativeWork, SchemaOrg::Thing].freeze

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
  end
end
