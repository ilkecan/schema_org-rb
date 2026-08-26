# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/LegislationObject
  #
  # A specific object or file containing a Legislation. Note that the same Legislation can be published in multiple files. For example, a digitally signed PDF, a plain PDF and an HTML version.
  class LegislationObject < Base
    include Mixins::LegislationObject

    SCHEMA_NAME = "LegislationObject"
    SCHEMA_TYPES = [self, SchemaOrg::Legislation, SchemaOrg::MediaObject, SchemaOrg::CreativeWork, SchemaOrg::Thing].freeze

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
