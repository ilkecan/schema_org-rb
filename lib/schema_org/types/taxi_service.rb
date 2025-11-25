module SchemaOrg
  # https://schema.org/TaxiService
  #
  # A service for a vehicle for hire with a driver for local travel. Fares are usually calculated based on distance traveled.
  class TaxiService
    include Mixins::TaxiService
  end
end
