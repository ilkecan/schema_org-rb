require "active_support/concern"

module SchemaOrg
  module Mixins
    module FoodEstablishment
      extend ActiveSupport::Concern

      include LocalBusiness

      included do
        option :accepts_reservations # Indicates whether a FoodEstablishment accepts reservations. Values can be Boolean, an URL at which reservations can be made or (for backwards compatibility) the strings ```Yes``` or ```No```.
        option :menu # Either the actual menu as a structured representation, as text, or a URL of the menu. Superseded by `has_menu`.
        option :serves_cuisine # The cuisine of the restaurant.
        option :star_rating # An official rating for a lodging business or food establishment, e.g. from national associations or standards bodies. Use the author property to indicate the rating organization, e.g. as an Organization with name such as (e.g. HOTREC, DEHOGA, WHR, or Hotelstars).
        option :has_menu # Either the actual menu as a structured representation, as text, or a URL of the menu. Supersedes `menu`.
      end
    end
  end
end
