module SchemaOrg
  # https://schema.org/Mosque
  #
  # A mosque.
  class Mosque < Base
    include Mixins::Mosque
    SCHEMA_TYPES = [self, SchemaOrg::PlaceOfWorship, SchemaOrg::CivicStructure, SchemaOrg::Place, SchemaOrg::Thing].freeze

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
