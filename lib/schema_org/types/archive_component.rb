# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/ArchiveComponent
  #
  # An intangible type to be applied to any archive content, carrying with it a set of properties required to describe archival items and collections.
  class ArchiveComponent < Base
    include Mixins::ArchiveComponent

    SCHEMA_NAME = "ArchiveComponent"
    SCHEMA_TYPES = [self, SchemaOrg::CreativeWork, SchemaOrg::Thing].freeze

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
