# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/PostalCodeRangeSpecification
  #
  # Indicates a range of postal codes, usually defined as the set of valid codes between [[postalCodeBegin]] and [[postalCodeEnd]], inclusively.
  class PostalCodeRangeSpecification < Base
    include Mixins::PostalCodeRangeSpecification

    SCHEMA_NAME = "PostalCodeRangeSpecification"
    SCHEMA_TYPES = [self, SchemaOrg::StructuredValue, SchemaOrg::Intangible, SchemaOrg::Thing].freeze

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
