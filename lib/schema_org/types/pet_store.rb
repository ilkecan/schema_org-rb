# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/PetStore
  #
  # A pet store.
  class PetStore < Base
    include Mixins::PetStore

    SCHEMA_NAME = "PetStore"
    SCHEMA_TYPES = [self, SchemaOrg::Store, SchemaOrg::LocalBusiness, SchemaOrg::Organization, SchemaOrg::Place, SchemaOrg::Thing].freeze

    class << self
      def schema_name
        SCHEMA_NAME
      end

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
