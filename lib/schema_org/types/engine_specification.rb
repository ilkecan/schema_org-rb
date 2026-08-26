module SchemaOrg
  # https://schema.org/EngineSpecification
  #
  # Information about the engine of the vehicle. A vehicle can have multiple engines represented by multiple engine specification entities.
  class EngineSpecification < Base
    include Mixins::EngineSpecification
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
