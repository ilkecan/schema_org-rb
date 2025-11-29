require "active_support/concern"

module SchemaOrg
  module Mixins
    module Seat
      extend ActiveSupport::Concern

      include Intangible

      included do
        option :seat_number # The location of the reserved seat (e.g., 27).
        option :seat_row # The row location of the reserved seat (e.g., B).
        option :seat_section # The section location of the reserved seat (e.g. Orchestra).
        option :seating_type # The type/class of the seat.
      end
    end
  end
end
