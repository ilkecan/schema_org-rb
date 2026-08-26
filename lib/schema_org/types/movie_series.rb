module SchemaOrg
  # https://schema.org/MovieSeries
  #
  # A series of movies. Included movies can be indicated with the hasPart property.
  class MovieSeries < Base
    include Mixins::MovieSeries
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
