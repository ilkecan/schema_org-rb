# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/ResearchOrganization
  #
  # A Research Organization (e.g. scientific institute, research company).
  class ResearchOrganization < Base
    include Mixins::ResearchOrganization

    SCHEMA_NAME = "ResearchOrganization"
    SCHEMA_TYPES = [self, SchemaOrg::Organization, SchemaOrg::Thing].freeze

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
