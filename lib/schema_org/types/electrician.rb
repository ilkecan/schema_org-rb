# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/Electrician
  #
  # An electrician.
  class Electrician < Base
    include Mixins::Electrician

    SCHEMA_NAME = "Electrician"
    SCHEMA_TYPES = [self, SchemaOrg::HomeAndConstructionBusiness, SchemaOrg::LocalBusiness, SchemaOrg::Organization, SchemaOrg::Place, SchemaOrg::Thing].freeze

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
