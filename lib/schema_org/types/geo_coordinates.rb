module SchemaOrg
  # https://schema.org/GeoCoordinates
  #
  # The geographic coordinates of a place or event.
  class GeoCoordinates < Base
    include Mixins::GeoCoordinates
  end
end
