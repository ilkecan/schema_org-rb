require "active_support/concern"

module SchemaOrg
  module Mixins
    module Airport
      extend ActiveSupport::Concern

      include CivicStructure

      included do
        option :iata_code, optional: true # IATA identifier for an airline or airport.
        option :icao_code, optional: true # ICAO identifier for an airport.
      end
    end
  end
end
