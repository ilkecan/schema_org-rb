module SchemaOrg
  # https://schema.org/Flight
  #
  # An airline flight.
  class Flight < Base
    include Mixins::Flight
  end
end
