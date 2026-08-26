module SchemaOrg
  # https://schema.org/Float
  #
  # Data type: Floating number.
  class Float < Base
    include Mixins::Float
    SCHEMA_TYPES = [self, SchemaOrg::Number, SchemaOrg::DataType].freeze
    ABSTRACT_TYPE = true

    class << self
      def schema_types
        SCHEMA_TYPES
      end

      def schema_type?(other_type)
        Base.schema_type_argument!(other_type)
        SCHEMA_TYPES.include?(other_type)
      end

      def new(**properties)
        raise AbstractTypeError, "Float is an abstract schema type"
      end
    end
  end
end
