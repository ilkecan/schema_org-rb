# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/Attorney
  #
  # Professional service: Attorney. \n\nThis type is deprecated - [[LegalService]] is more inclusive and less ambiguous.
  class Attorney < Base
    include Mixins::Attorney

    SCHEMA_NAME = "Attorney"
    SCHEMA_TYPES = [self, SchemaOrg::LegalService, SchemaOrg::LocalBusiness, SchemaOrg::Organization, SchemaOrg::Place, SchemaOrg::Thing].freeze

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
