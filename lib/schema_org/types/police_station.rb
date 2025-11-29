module SchemaOrg
  # https://schema.org/PoliceStation
  #
  # A police station.
  class PoliceStation < Base
    include Mixins::PoliceStation
  end
end
