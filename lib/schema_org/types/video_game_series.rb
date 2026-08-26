module SchemaOrg
  # https://schema.org/VideoGameSeries
  #
  # A video game series.
  class VideoGameSeries < Base
    include Mixins::VideoGameSeries
    SCHEMA_TYPES = [self, SchemaOrg::CreativeWorkSeries, SchemaOrg::CreativeWork, SchemaOrg::Series, SchemaOrg::Thing, SchemaOrg::Intangible].freeze

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
