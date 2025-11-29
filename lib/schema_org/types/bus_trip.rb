module SchemaOrg
  # https://schema.org/BusTrip
  #
  # A trip on a commercial bus line.
  class BusTrip < Base
    include Mixins::BusTrip
  end
end
