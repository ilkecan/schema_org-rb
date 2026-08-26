module SchemaOrg
  # https://schema.org/VideoGallery
  #
  # Web page type: Video gallery page.
  class VideoGallery < Base
    include Mixins::VideoGallery
    SCHEMA_TYPES = [self, SchemaOrg::MediaGallery, SchemaOrg::CollectionPage, SchemaOrg::WebPage, SchemaOrg::CreativeWork, SchemaOrg::Thing].freeze

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
