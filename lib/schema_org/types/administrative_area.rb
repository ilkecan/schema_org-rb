module SchemaOrg
  # https://schema.org/AdministrativeArea
  #
  # A geographical region, typically under the jurisdiction of a particular government.
  class AdministrativeArea < Base
    include Mixins::AdministrativeArea
    SCHEMA_TYPES = [self, SchemaOrg::Place, SchemaOrg::Thing].freeze

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
