# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/SequentialArt
  #
  # An art forms that use images deployed in a specific order for the purpose of graphic storytelling (i.e., narration of graphic stories) or conveying information. Examples of SequentialArt are Franco-Belgian Bande Dessinée, Comics in the USA and 漫画 (Manga) in Japan.
  class SequentialArt < Base
    include Mixins::SequentialArt

    SCHEMA_NAME = "SequentialArt"
    SCHEMA_TYPES = [self, SchemaOrg::Book, SchemaOrg::VisualArtwork, SchemaOrg::CreativeWork, SchemaOrg::Thing].freeze

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
