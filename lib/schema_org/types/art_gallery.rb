# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/ArtGallery
  #
  # An art gallery.
  class ArtGallery < Base
    include Mixins::ArtGallery

    SCHEMA_NAME = "ArtGallery"
    SCHEMA_TYPES = [self, SchemaOrg::EntertainmentBusiness, SchemaOrg::LocalBusiness, SchemaOrg::Organization, SchemaOrg::Place, SchemaOrg::Thing].freeze

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
