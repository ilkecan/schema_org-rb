module SchemaOrg
  # https://schema.org/HowToSupply
  #
  # A supply consumed when performing the instructions for how to achieve a result.
  class HowToSupply < Base
    include Mixins::HowToSupply
    SCHEMA_TYPES = [self, SchemaOrg::HowToItem, SchemaOrg::ListItem, SchemaOrg::Intangible, SchemaOrg::Thing].freeze

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
