# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/ComicStory
  #
  # The term "story" is any indivisible, re-printable
  #     	unit of a comic, including the interior stories, covers, and backmatter. Most
  #     	comics have at least two stories: a cover (ComicCoverArt) and an interior story.
  class ComicStory < Base
    include Mixins::ComicStory

    SCHEMA_NAME = "ComicStory"
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
