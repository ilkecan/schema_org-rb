require "active_support/concern"

module SchemaOrg
  module Mixins
    module BedDetails
      extend ActiveSupport::Concern

      include Intangible

      included do
        option :number_of_beds # The quantity of the given bed type available in the HotelRoom, Suite, House, or Apartment.
        option :type_of_bed # The type of bed to which the BedDetail refers, i.e. the type of bed available in the quantity indicated by quantity.
      end
    end
  end
end
