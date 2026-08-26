# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/Text
  #
  # Data type: Text.
  class Text < Base
    include Mixins::Text

    SCHEMA_NAME = "Text"
    SCHEMA_TYPES = [self, SchemaOrg::DataType].freeze
    ABSTRACT_TYPE = true

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
        raise AbstractTypeError, "Text is an abstract schema type"
      end
    end
  end
end
