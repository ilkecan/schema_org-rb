# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/MediaGallery
  #
  # Web page type: Media gallery page. A mixed-media page that can contain media such as images, videos, and other multimedia.
  class MediaGallery < Base
    include Mixins::MediaGallery

    SCHEMA_NAME = "MediaGallery"
    SCHEMA_TYPES = [self, SchemaOrg::CollectionPage, SchemaOrg::WebPage, SchemaOrg::CreativeWork, SchemaOrg::Thing].freeze

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
