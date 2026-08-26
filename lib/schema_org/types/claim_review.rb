# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/ClaimReview
  #
  # A fact-checking review of claims made (or reported) in some creative work (referenced via itemReviewed).
  class ClaimReview < Base
    include Mixins::ClaimReview

    SCHEMA_NAME = "ClaimReview"
    SCHEMA_TYPES = [self, SchemaOrg::Review, SchemaOrg::CreativeWork, SchemaOrg::Thing].freeze

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
