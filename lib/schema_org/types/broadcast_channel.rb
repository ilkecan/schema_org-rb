module SchemaOrg
  # https://schema.org/BroadcastChannel
  #
  # A unique instance of a BroadcastService on a CableOrSatelliteService lineup.
  class BroadcastChannel < Base
    include Mixins::BroadcastChannel
  end
end
