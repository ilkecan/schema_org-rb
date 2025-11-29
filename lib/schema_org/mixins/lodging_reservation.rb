require "active_support/concern"

module SchemaOrg
  module Mixins
    module LodgingReservation
      extend ActiveSupport::Concern

      include Reservation

      included do
        option :checkin_time # The earliest someone may check into a lodging establishment.
        option :checkout_time # The latest someone may check out of a lodging establishment.
        option :lodging_unit_description # A full description of the lodging unit.
        option :lodging_unit_type # Textual description of the unit type (including suite vs. room, size of bed, etc.).
        option :num_adults # The number of adults staying in the unit.
        option :num_children # The number of children staying in the unit.
      end
    end
  end
end
