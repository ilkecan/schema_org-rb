# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/Table
  #
  # A table on a Web page.
  class Table < Base
    include Mixins::Table

    SCHEMA_NAME = "Table"
    SCHEMA_TYPES = [self, SchemaOrg::WebPageElement, SchemaOrg::CreativeWork, SchemaOrg::Thing].freeze

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
