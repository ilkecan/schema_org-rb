module SchemaOrg
  # https://schema.org/Reservoir
  #
  # A reservoir of water, typically an artificially created lake, like the Lake Kariba reservoir.
  class Reservoir < Base
    include Mixins::Reservoir
    SCHEMA_TYPES = [self, SchemaOrg::BodyOfWater, SchemaOrg::Landform, SchemaOrg::Place, SchemaOrg::Thing].freeze

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
