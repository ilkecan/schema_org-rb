# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/AutoPartsStore
  #
  # An auto parts store.
  class AutoPartsStore < Base
    include Mixins::AutoPartsStore

    SCHEMA_NAME = "AutoPartsStore"
    SCHEMA_TYPES = [self, SchemaOrg::AutomotiveBusiness, SchemaOrg::Store, SchemaOrg::LocalBusiness, SchemaOrg::Organization, SchemaOrg::Place, SchemaOrg::Thing].freeze

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
