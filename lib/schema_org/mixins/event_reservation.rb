require "active_support/concern"

module SchemaOrg
  module Mixins
    module EventReservation
      extend ActiveSupport::Concern

      include Reservation
    end
  end
end
