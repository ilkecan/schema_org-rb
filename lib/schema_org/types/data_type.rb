# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/DataType
  #
  # The basic data types such as Integers, Strings, etc.
  class DataType < Base
    include Mixins::DataType

    SCHEMA_NAME = "DataType"
    SCHEMA_TYPES = [self].freeze
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
        raise AbstractTypeError, "DataType is an abstract schema type"
      end
    end
  end
end
