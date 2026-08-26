module SchemaOrg
  # https://schema.org/MusicGroup
  #
  # A musical group, such as a band, an orchestra, or a choir. Can also be a solo musician.
  class MusicGroup < Base
    include Mixins::MusicGroup
    SCHEMA_TYPES = [self, SchemaOrg::PerformingGroup, SchemaOrg::Organization, SchemaOrg::Thing].freeze

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
