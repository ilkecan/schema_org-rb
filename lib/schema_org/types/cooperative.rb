module SchemaOrg
  # https://schema.org/Cooperative
  #
  # An organization that is a joint project of multiple organizations or persons.
  class Cooperative < Base
    include Mixins::Cooperative
    SCHEMA_TYPES = [self, SchemaOrg::Organization, SchemaOrg::Thing].freeze

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
