# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/Campground
  #
  # A camping site, campsite, or [[Campground]] is a place used for overnight stay in the outdoors, typically containing individual [[CampingPitch]] locations. \n\n
  # In British English a campsite is an area, usually divided into a number of pitches, where people can camp overnight using tents or camper vans or caravans; this British English use of the word is synonymous with the American English expression campground. In American English the term campsite generally means an area where an individual, family, group, or military unit can pitch a tent or park a camper; a campground may contain many campsites (source: Wikipedia, see [https://en.wikipedia.org/wiki/Campsite](https://en.wikipedia.org/wiki/Campsite)).\n\n
  #
  # See also the dedicated [document on the use of schema.org for marking up hotels and other forms of accommodations](/docs/hotels.html).
  class Campground < Base
    include Mixins::Campground

    SCHEMA_NAME = "Campground"
    SCHEMA_TYPES = [self, SchemaOrg::CivicStructure, SchemaOrg::LodgingBusiness, SchemaOrg::Place, SchemaOrg::LocalBusiness, SchemaOrg::Thing, SchemaOrg::Organization].freeze

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
