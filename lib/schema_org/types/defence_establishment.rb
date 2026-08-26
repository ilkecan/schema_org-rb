# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/DefenceEstablishment
  #
  # A defence establishment, such as an army or navy base.
  class DefenceEstablishment < Base
    include Mixins::DefenceEstablishment

    SCHEMA_NAME = "DefenceEstablishment"
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
