module SchemaOrg
  # https://schema.org/MusicRecording
  #
  # A music recording (track), usually a single song.
  class MusicRecording < Base
    include Mixins::MusicRecording
    SCHEMA_TYPES = [self, SchemaOrg::CreativeWork, SchemaOrg::Thing].freeze

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
