# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/DataFeed
  #
  # A single feed providing structured information about one or more entities or topics.
  class DataFeed < Base
    include Mixins::DataFeed

    SCHEMA_NAME = "DataFeed"
    SCHEMA_TYPES = [self, SchemaOrg::Dataset, SchemaOrg::CreativeWork, SchemaOrg::Thing].freeze

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
