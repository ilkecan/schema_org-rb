module SchemaOrg
  # https://schema.org/IndividualProduct
  #
  # A single, identifiable product instance (e.g. a laptop with a particular serial number).
  class IndividualProduct < Base
    include Mixins::IndividualProduct
    SCHEMA_TYPES = [self, SchemaOrg::Product, SchemaOrg::Thing].freeze

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
