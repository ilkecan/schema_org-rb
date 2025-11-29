module SchemaOrg
  # https://schema.org/GasStation
  #
  # A gas station.
  class GasStation < Base
    include Mixins::GasStation
  end
end
