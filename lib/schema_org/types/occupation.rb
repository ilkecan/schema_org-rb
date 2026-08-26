module SchemaOrg
  # https://schema.org/Occupation
  #
  # A profession, may involve prolonged training and/or a formal qualification.
  class Occupation < Base
    include Mixins::Occupation
    SCHEMA_TYPES = [self, SchemaOrg::Intangible, SchemaOrg::Thing].freeze

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
