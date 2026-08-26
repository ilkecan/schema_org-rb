# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/SearchRescueOrganization
  #
  # A Search and Rescue organization of some kind.
  class SearchRescueOrganization < Base
    include Mixins::SearchRescueOrganization

    SCHEMA_NAME = "SearchRescueOrganization"
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
