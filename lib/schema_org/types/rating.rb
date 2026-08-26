module SchemaOrg
  # https://schema.org/Rating
  #
  # A rating is an evaluation on a numeric scale, such as 1 to 5 stars.
  class Rating < Base
    include Mixins::Rating
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
