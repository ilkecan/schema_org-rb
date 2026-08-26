# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/RadioClip
  #
  # A short radio program or a segment/part of a radio program.
  class RadioClip < Base
    include Mixins::RadioClip

    SCHEMA_NAME = "RadioClip"
    SCHEMA_TYPES = [self, SchemaOrg::Clip, SchemaOrg::CreativeWork, SchemaOrg::Thing].freeze

    class << self
      def schema_name
        SCHEMA_NAME
      end

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
