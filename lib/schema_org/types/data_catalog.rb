# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/DataCatalog
  #
  # A collection of datasets.
  class DataCatalog < Base
    include Mixins::DataCatalog

    SCHEMA_NAME = "DataCatalog"
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
