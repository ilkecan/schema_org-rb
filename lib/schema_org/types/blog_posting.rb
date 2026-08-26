module SchemaOrg
  # https://schema.org/BlogPosting
  #
  # A blog post.
  class BlogPosting < Base
    include Mixins::BlogPosting
    SCHEMA_TYPES = [self, SchemaOrg::SocialMediaPosting, SchemaOrg::Article, SchemaOrg::CreativeWork, SchemaOrg::Thing].freeze

    class << self
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
