module SchemaOrg
  # https://schema.org/BusStop
  #
  # A bus stop.
  class BusStop < Base
    include Mixins::BusStop
  end
end
