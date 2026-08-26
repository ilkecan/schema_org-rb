# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/MovieTheater
  #
  # A movie theater.
  class MovieTheater < Base
    include Mixins::MovieTheater

    SCHEMA_NAME = "MovieTheater"
    SCHEMA_TYPES = [self, SchemaOrg::CivicStructure, SchemaOrg::EntertainmentBusiness, SchemaOrg::Place, SchemaOrg::LocalBusiness, SchemaOrg::Thing, SchemaOrg::Organization].freeze

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
