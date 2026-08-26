module SchemaOrg
  # https://schema.org/Question
  #
  # A specific question - e.g. from a user seeking answers online, or collected in a Frequently Asked Questions (FAQ) document.
  class Question < Base
    include Mixins::Question
    SCHEMA_TYPES = [self, SchemaOrg::Comment, SchemaOrg::CreativeWork, SchemaOrg::Thing].freeze

    class << self
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
