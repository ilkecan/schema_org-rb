# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/Periodical
  #
  # A publication in any medium issued in successive parts bearing numerical or chronological designations and intended to continue indefinitely, such as a magazine, scholarly journal, or newspaper.\n\nSee also [blog post](https://blog.schema.org/2014/09/02/schema-org-support-for-bibliographic-relationships-and-periodicals/).
  class Periodical < Base
    include Mixins::Periodical

    SCHEMA_NAME = "Periodical"
    SCHEMA_TYPES = [self, SchemaOrg::CreativeWorkSeries, SchemaOrg::CreativeWork, SchemaOrg::Series, SchemaOrg::Thing, SchemaOrg::Intangible].freeze

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
