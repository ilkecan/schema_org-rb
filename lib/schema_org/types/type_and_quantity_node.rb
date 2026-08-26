module SchemaOrg
  # https://schema.org/TypeAndQuantityNode
  #
  # A structured value indicating the quantity, unit of measurement, and business function of goods included in a bundle offer.
  class TypeAndQuantityNode < Base
    include Mixins::TypeAndQuantityNode
    SCHEMA_TYPES = [self, SchemaOrg::StructuredValue, SchemaOrg::Intangible, SchemaOrg::Thing].freeze

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
