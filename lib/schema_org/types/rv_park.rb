# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/RVPark
  #
  # A place offering space for "Recreational Vehicles", Caravans, mobile homes and the like.
  class RVPark < Base
    include Mixins::RVPark

    SCHEMA_NAME = "RVPark"
    SCHEMA_TYPES = [self, SchemaOrg::CivicStructure, SchemaOrg::Place, SchemaOrg::Thing].freeze

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
