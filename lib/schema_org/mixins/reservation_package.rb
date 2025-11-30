require "active_support/concern"

module SchemaOrg
  module Mixins
    module ReservationPackage
      extend ActiveSupport::Concern

      include Reservation

      included do
        option :sub_reservation, optional: true # The individual reservations included in the package. Typically a repeated property.
      end
    end
  end
end
