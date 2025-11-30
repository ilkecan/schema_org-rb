require "active_support/concern"

module SchemaOrg
  module Mixins
    module GeoCircle
      extend ActiveSupport::Concern

      include GeoShape

      included do
        option :geo_midpoint, optional: true # Indicates the GeoCoordinates at the centre of a GeoShape, e.g. GeoCircle.
        option :geo_radius, optional: true # Indicates the approximate radius of a GeoCircle (metres unless indicated otherwise via Distance notation).
      end
    end
  end
end
