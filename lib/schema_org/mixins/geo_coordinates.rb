require "active_support/concern"

module SchemaOrg
  module Mixins
    module GeoCoordinates
      extend ActiveSupport::Concern

      include StructuredValue

      included do
        option :address, optional: true # Physical address of the item.
        option :address_country, optional: true # The country. Recommended to be in 2-letter [ISO 3166-1 alpha-2](http://en.wikipedia.org/wiki/ISO_3166-1) format, for example "US". For backward compatibility, a 3-letter [ISO 3166-1 alpha-3](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-3) country code such as "SGP" or a full country name such as "Singapore" can also be used.
        option :elevation, optional: true # The elevation of a location ([WGS 84](https://en.wikipedia.org/wiki/World_Geodetic_System)). Values may be of the form 'NUMBER UNIT\_OF\_MEASUREMENT' (e.g., '1,000 m', '3,200 ft') while numbers alone should be assumed to be a value in meters.
        option :latitude, optional: true # The latitude of a location. For example ```37.42242``` ([WGS 84](https://en.wikipedia.org/wiki/World_Geodetic_System)).
        option :longitude, optional: true # The longitude of a location. For example ```-122.08585``` ([WGS 84](https://en.wikipedia.org/wiki/World_Geodetic_System)).
        option :postal_code, optional: true # The postal code. For example, 94043.
      end
    end
  end
end
