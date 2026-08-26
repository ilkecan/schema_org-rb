# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/WebPageElement
  #
  # A web page element, like a table or an image.
  class WebPageElement < Base
    include Mixins::WebPageElement

    SCHEMA_NAME = "WebPageElement"
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
