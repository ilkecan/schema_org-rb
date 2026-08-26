module SchemaOrg
  # https://schema.org/Clip
  #
  # A short TV or radio program or a segment/part of a program.
  class Clip < Base
    include Mixins::Clip
    SCHEMA_TYPES = [self, SchemaOrg::CreativeWork, SchemaOrg::Thing].freeze

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
