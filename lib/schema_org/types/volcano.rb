module SchemaOrg
  # https://schema.org/Volcano
  #
  # A volcano, like Fujisan.
  class Volcano < Base
    include Mixins::Volcano
    SCHEMA_TYPES = [self, SchemaOrg::Landform, SchemaOrg::Place, SchemaOrg::Thing].freeze

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
