module SchemaOrg
  # https://schema.org/StructuredValue
  #
  # Structured values are used when the value of a property has a more complex structure than simply being a textual value or a reference to another thing.
  class StructuredValue < Base
    include Mixins::StructuredValue
    SCHEMA_TYPES = [self, SchemaOrg::Intangible, SchemaOrg::Thing].freeze

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
