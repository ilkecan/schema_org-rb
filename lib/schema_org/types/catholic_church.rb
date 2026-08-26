module SchemaOrg
  # https://schema.org/CatholicChurch
  #
  # A Catholic church.
  class CatholicChurch < Base
    include Mixins::CatholicChurch
    SCHEMA_TYPES = [self, SchemaOrg::Church, SchemaOrg::PlaceOfWorship, SchemaOrg::CivicStructure, SchemaOrg::Place, SchemaOrg::Thing].freeze

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
