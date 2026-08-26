# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/OpinionNewsArticle
  #
  # An [[OpinionNewsArticle]] is a [[NewsArticle]] that primarily expresses opinions rather than journalistic reporting of news and events. For example, a [[NewsArticle]] consisting of a column or [[Blog]]/[[BlogPosting]] entry in the Opinions section of a news publication.
  class OpinionNewsArticle < Base
    include Mixins::OpinionNewsArticle

    SCHEMA_NAME = "OpinionNewsArticle"
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
