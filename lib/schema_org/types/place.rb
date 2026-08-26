module SchemaOrg
  # https://schema.org/Place
  #
  # Entities that have a somewhat fixed, physical extension.
  class Place < Base
    include Mixins::Place
    SCHEMA_TYPES = [self, SchemaOrg::Thing].freeze

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
