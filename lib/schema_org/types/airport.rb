module SchemaOrg
  # https://schema.org/Airport
  #
  # An airport.
  class Airport < Base
    include Mixins::Airport
  end
end
