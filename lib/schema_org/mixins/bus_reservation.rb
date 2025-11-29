require "active_support/concern"

module SchemaOrg
  module Mixins
    module BusReservation
      extend ActiveSupport::Concern

      include Reservation
    end
  end
end
