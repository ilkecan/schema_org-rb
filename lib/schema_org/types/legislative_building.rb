# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/LegislativeBuilding
  #
  # A legislative building&#x2014;for example, the state capitol.
  class LegislativeBuilding < Base
    include Mixins::LegislativeBuilding

    SCHEMA_NAME = "LegislativeBuilding"
    SCHEMA_TYPES = [self, SchemaOrg::GovernmentBuilding, SchemaOrg::CivicStructure, SchemaOrg::Place, SchemaOrg::Thing].freeze

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
