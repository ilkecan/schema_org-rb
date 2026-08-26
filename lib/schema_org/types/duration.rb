# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/Duration
  #
  # Quantity: Duration (use [ISO 8601 duration format](http://en.wikipedia.org/wiki/ISO_8601)).
  class Duration < Base
    include Mixins::Duration

    SCHEMA_NAME = "Duration"
    SCHEMA_TYPES = [self, SchemaOrg::Quantity, SchemaOrg::DataType].freeze
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
        raise AbstractTypeError, "Duration is an abstract schema type"
      end
    end
  end
end
