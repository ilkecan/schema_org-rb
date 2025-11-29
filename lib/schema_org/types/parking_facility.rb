module SchemaOrg
  # https://schema.org/ParkingFacility
  #
  # A parking lot or other parking facility.
  class ParkingFacility < Base
    include Mixins::ParkingFacility
  end
end
