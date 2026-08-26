# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/TouristTrip
  #
  # A tourist trip. A created itinerary of visits to one or more places of interest ([[TouristAttraction]]/[[TouristDestination]]) often linked by a similar theme, geographic area, or interest to a particular [[touristType]]. The [UNWTO](http://www2.unwto.org/) defines tourism trip as the Trip taken by visitors.
  #   (See examples below.)
  class TouristTrip < Base
    include Mixins::TouristTrip

    SCHEMA_NAME = "TouristTrip"
    SCHEMA_TYPES = [self, SchemaOrg::Trip, SchemaOrg::Intangible, SchemaOrg::Thing].freeze

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
