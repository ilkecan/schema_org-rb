module SchemaOrg
  # https://schema.org/TheaterGroup
  #
  # A theater group or company, for example, the Royal Shakespeare Company or Druid Theatre.
  class TheaterGroup < Base
    include Mixins::TheaterGroup
    SCHEMA_TYPES = [self, SchemaOrg::PerformingGroup, SchemaOrg::Organization, SchemaOrg::Thing].freeze

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
