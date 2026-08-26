module SchemaOrg
  # https://schema.org/DateTime
  #
  # A combination of date and time of day in the form [-]CCYY-MM-DDThh:mm:ss[Z|(+|-)hh:mm] (see Chapter 5.4 of ISO 8601).
  class DateTime < Base
    include Mixins::DateTime
    SCHEMA_TYPES = [self, SchemaOrg::DataType].freeze
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
        raise AbstractTypeError, "DateTime is an abstract schema type"
      end
    end
  end
end
