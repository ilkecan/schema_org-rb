module SchemaOrg
  # https://schema.org/ParentAudience
  #
  # A set of characteristics describing parents, who can be interested in viewing some content.
  class ParentAudience < Base
    include Mixins::ParentAudience
    SCHEMA_TYPES = [self, SchemaOrg::PeopleAudience, SchemaOrg::Audience, SchemaOrg::Intangible, SchemaOrg::Thing].freeze

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
