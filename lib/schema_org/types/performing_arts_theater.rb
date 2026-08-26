module SchemaOrg
  # https://schema.org/PerformingArtsTheater
  #
  # A theater or other performing art center.
  class PerformingArtsTheater < Base
    include Mixins::PerformingArtsTheater
    SCHEMA_TYPES = [self, SchemaOrg::CivicStructure, SchemaOrg::Place, SchemaOrg::Thing].freeze

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
