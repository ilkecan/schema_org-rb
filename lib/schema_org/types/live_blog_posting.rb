# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  # https://schema.org/LiveBlogPosting
  #
  # A [[LiveBlogPosting]] is a [[BlogPosting]] intended to provide a rolling textual coverage of an ongoing event through continuous updates.
  class LiveBlogPosting < Base
    include Mixins::LiveBlogPosting

    SCHEMA_NAME = "LiveBlogPosting"
    SCHEMA_TYPES = [self, SchemaOrg::BlogPosting, SchemaOrg::SocialMediaPosting, SchemaOrg::Article, SchemaOrg::CreativeWork, SchemaOrg::Thing].freeze

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
