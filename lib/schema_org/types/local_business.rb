# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/LocalBusiness
  #
  # A particular physical business or branch of an organization. Examples of LocalBusiness include a restaurant, a particular branch of a restaurant chain, a branch of a bank, a medical practice, a club, a bowling alley, etc.
  class LocalBusiness < Base
    include Mixins::LocalBusiness

    SCHEMA_NAME = "LocalBusiness"
    SCHEMA_TYPES = [self, SchemaOrg::Organization, SchemaOrg::Place, SchemaOrg::Thing].freeze

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
