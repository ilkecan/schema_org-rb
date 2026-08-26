module SchemaOrg
  # https://schema.org/WarrantyPromise
  #
  # A structured value representing the duration and scope of services that will be provided to a customer free of charge in case of a defect or malfunction of a product.
  class WarrantyPromise < Base
    include Mixins::WarrantyPromise
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
