# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/BedType
  #
  # A type of bed. This is used for indicating the bed or beds available in an accommodation.
  class BedType < Base
    include Mixins::BedType

    SCHEMA_NAME = "BedType"
    SCHEMA_TYPES = [self, SchemaOrg::QualitativeValue, SchemaOrg::Enumeration, SchemaOrg::Intangible, SchemaOrg::Thing].freeze

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
