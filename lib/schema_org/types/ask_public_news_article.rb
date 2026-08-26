# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/AskPublicNewsArticle
  #
  # A [[NewsArticle]] expressing an open call by a [[NewsMediaOrganization]] asking the public for input, insights, clarifications, anecdotes, documentation, etc., on an issue, for reporting purposes.
  class AskPublicNewsArticle < Base
    include Mixins::AskPublicNewsArticle

    SCHEMA_NAME = "AskPublicNewsArticle"
    SCHEMA_TYPES = [self, SchemaOrg::NewsArticle, SchemaOrg::Article, SchemaOrg::CreativeWork, SchemaOrg::Thing].freeze

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
