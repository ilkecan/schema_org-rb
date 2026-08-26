# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/FAQPage
  #
  # A [[FAQPage]] is a [[WebPage]] presenting one or more "[Frequently asked questions](https://en.wikipedia.org/wiki/FAQ)" (see also [[QAPage]]).
  class FAQPage < Base
    include Mixins::FAQPage

    SCHEMA_NAME = "FAQPage"
    SCHEMA_TYPES = [self, SchemaOrg::WebPage, SchemaOrg::CreativeWork, SchemaOrg::Thing].freeze

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
