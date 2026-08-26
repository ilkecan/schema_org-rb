# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/Person
  #
  # A person (alive, dead, undead, or fictional).
  class Person < Base
    include Mixins::Person

    SCHEMA_NAME = "Person"
    SCHEMA_TYPES = [self, SchemaOrg::Thing].freeze

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
