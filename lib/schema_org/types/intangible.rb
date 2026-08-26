module SchemaOrg
  # https://schema.org/Intangible
  #
  # A utility class that serves as the umbrella for a number of 'intangible' things such as quantities, structured values, etc.
  class Intangible < Base
    include Mixins::Intangible
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
