# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/DefinedTermSet
  #
  # A set of defined terms, for example a set of categories or a classification scheme, a glossary, dictionary or enumeration. Use the about property to specify what the term set is about.
  class DefinedTermSet < Base
    include Mixins::DefinedTermSet

    SCHEMA_NAME = "DefinedTermSet"
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
