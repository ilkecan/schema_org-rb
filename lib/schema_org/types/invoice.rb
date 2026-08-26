module SchemaOrg
  # https://schema.org/Invoice
  #
  # A statement of the money due for goods or services; a bill.
  class Invoice < Base
    include Mixins::Invoice
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
