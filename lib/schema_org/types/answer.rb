# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/Answer
  #
  # An answer offered to a question; perhaps correct, perhaps opinionated or wrong.
  class Answer < Base
    include Mixins::Answer

    SCHEMA_NAME = "Answer"
    SCHEMA_TYPES = [self, SchemaOrg::Comment, SchemaOrg::CreativeWork, SchemaOrg::Thing].freeze

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
