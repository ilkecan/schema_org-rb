module SchemaOrg
  # https://schema.org/AlignmentObject
  #
  # An intangible item that describes an alignment between a learning resource and a node in an educational framework.
  # Should not be used where the nature of the alignment can be described using a simple property, for example to express that a resource [[teaches]] or [[assesses]] a competency.
  class AlignmentObject < Base
    include Mixins::AlignmentObject
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
