module SchemaOrg
  # https://schema.org/Time
  #
  # A point in time recurring on multiple days in the form hh:mm:ss[Z|(+|-)hh:mm] (see [XML schema for details](http://www.w3.org/TR/xmlschema-2/#time)).
  class Time < Base
    include Mixins::Time
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
        raise AbstractTypeError, "Time is an abstract schema type"
      end
    end
  end
end
