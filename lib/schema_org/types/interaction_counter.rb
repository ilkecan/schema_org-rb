module SchemaOrg
  # https://schema.org/InteractionCounter
  #
  # NOTE: Supersedes `UserBlocks`.
  #
  # A summary of how users have interacted with this CreativeWork. In most cases, authors will use a subtype to specify the specific type of interaction.
  class InteractionCounter < Base
    include Mixins::InteractionCounter
    SCHEMA_TYPES = [self, SchemaOrg::StructuredValue, SchemaOrg::Intangible, SchemaOrg::Thing].freeze

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
