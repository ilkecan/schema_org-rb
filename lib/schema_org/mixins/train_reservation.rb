require "active_support/concern"

module SchemaOrg
  module Mixins
    module TrainReservation
      extend ActiveSupport::Concern

      include Reservation
    end
  end
end
