module SchemaOrg
  # https://schema.org/Mass
  #
  # Properties that take Mass as values are of the form '&lt;Number&gt; &lt;Mass unit of measure&gt;'. E.g., '7 kg'.
  class Mass < Base
    include Mixins::Mass
    SCHEMA_TYPES = [self, SchemaOrg::Quantity, SchemaOrg::DataType].freeze
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
        raise AbstractTypeError, "Mass is an abstract schema type"
      end
    end
  end
end
