module SchemaOrg
  # https://schema.org/ExhibitionEvent
  #
  # Event type: Exhibition event, e.g. at a museum, library, archive, tradeshow, ...
  class ExhibitionEvent < Base
    include Mixins::ExhibitionEvent
    SCHEMA_TYPES = [self, SchemaOrg::Event, SchemaOrg::Thing].freeze

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
