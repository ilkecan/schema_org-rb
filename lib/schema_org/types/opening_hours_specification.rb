# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/OpeningHoursSpecification
  #
  # A structured value providing information about the opening hours of a place or a certain service inside a place.\n\n
  # The place is __open__ if the [[opens]] property is specified, and __closed__ otherwise.\n\nIf the value for the [[closes]] property is less than the value for the [[opens]] property then the hour range is assumed to span over the next day.
  class OpeningHoursSpecification < Base
    include Mixins::OpeningHoursSpecification

    SCHEMA_NAME = "OpeningHoursSpecification"
    SCHEMA_TYPES = [self, SchemaOrg::StructuredValue, SchemaOrg::Intangible, SchemaOrg::Thing].freeze

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
