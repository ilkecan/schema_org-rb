module SchemaOrg
  # https://schema.org/ContactPoint
  #
  # A contact point&#x2014;for example, a Customer Complaints department.
  class ContactPoint < Base
    include Mixins::ContactPoint
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
