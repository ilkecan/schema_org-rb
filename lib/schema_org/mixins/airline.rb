require "active_support/concern"

module SchemaOrg
  module Mixins
    module Airline
      extend ActiveSupport::Concern

      include Organization

      included do
        option :boarding_policy, optional: true # The type of boarding policy used by the airline (e.g. zone-based or group-based).
        option :iata_code, optional: true # IATA identifier for an airline or airport.
      end
    end
  end
end
