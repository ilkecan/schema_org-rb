# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  # https://schema.org/ComicSeries
  #
  # A sequential publication of comic stories under a
  #     	unifying title, for example "The Amazing Spider-Man" or "Groo the
  #     	Wanderer".
  class ComicSeries < Base
    include Mixins::ComicSeries

    SCHEMA_NAME = "ComicSeries"
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
