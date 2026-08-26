# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/Consortium
  #
  # A Consortium is a membership [[Organization]] whose members are typically Organizations.
  class Consortium < Base
    include Mixins::Consortium

    SCHEMA_NAME = "Consortium"
    SCHEMA_TYPES = [self, SchemaOrg::Organization, SchemaOrg::Thing].freeze

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
