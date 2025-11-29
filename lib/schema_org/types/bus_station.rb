module SchemaOrg
  # https://schema.org/BusStation
  #
  # A bus station.
  class BusStation < Base
    include Mixins::BusStation
  end
end
