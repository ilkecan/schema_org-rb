module SchemaOrg
  # https://schema.org/Permit
  #
  # A permit issued by an organization, e.g. a parking pass.
  class Permit < Base
    include Mixins::Permit
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
