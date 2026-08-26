# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/Newspaper
  #
  # A publication containing information about varied topics that are pertinent to general information, a geographic area, or a specific subject matter (i.e. business, culture, education). Often published daily.
  class Newspaper < Base
    include Mixins::Newspaper

    SCHEMA_NAME = "Newspaper"
    SCHEMA_TYPES = [self, SchemaOrg::Periodical, SchemaOrg::CreativeWorkSeries, SchemaOrg::CreativeWork, SchemaOrg::Series, SchemaOrg::Thing, SchemaOrg::Intangible].freeze

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
