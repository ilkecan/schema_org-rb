# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/HomeAndConstructionBusiness
  #
  # A construction business.\n\nA HomeAndConstructionBusiness is a [[LocalBusiness]] that provides services around homes and buildings.\n\nAs a [[LocalBusiness]] it can be described as a [[provider]] of one or more [[Service]]\(s).
  class HomeAndConstructionBusiness < Base
    include Mixins::HomeAndConstructionBusiness

    SCHEMA_NAME = "HomeAndConstructionBusiness"
    SCHEMA_TYPES = [self, SchemaOrg::LocalBusiness, SchemaOrg::Organization, SchemaOrg::Place, SchemaOrg::Thing].freeze

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
