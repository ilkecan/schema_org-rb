# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/ShortStory
  #
  # Short story or tale. A brief work of literature, usually written in narrative prose.
  class ShortStory < Base
    include Mixins::ShortStory

    SCHEMA_NAME = "ShortStory"
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
