# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/Poster
  #
  # A large, usually printed placard, bill, or announcement, often illustrated, that is posted to advertise or publicize something.
  class Poster < Base
    include Mixins::Poster

    SCHEMA_NAME = "Poster"
    SCHEMA_TYPES = [self, SchemaOrg::CreativeWork, SchemaOrg::Thing].freeze

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
