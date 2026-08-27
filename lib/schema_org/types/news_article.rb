# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  # https://schema.org/NewsArticle
  #
  # A NewsArticle is an article whose content reports news, or provides background context and supporting materials for understanding the news.
  #
  # A more detailed overview of [schema.org News markup](/docs/news.html) is also available.
  class NewsArticle < Base
    include Mixins::NewsArticle

    SCHEMA_NAME = "NewsArticle"
    SCHEMA_TYPES = [self, SchemaOrg::Article, SchemaOrg::CreativeWork, SchemaOrg::Thing].freeze

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
