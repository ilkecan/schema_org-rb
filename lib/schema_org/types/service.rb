module SchemaOrg
  # https://schema.org/Service
  #
  # A service provided by an organization, e.g. delivery service, print services, etc.
  class Service < Base
    include Mixins::Service
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
