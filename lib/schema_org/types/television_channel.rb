module SchemaOrg
  # https://schema.org/TelevisionChannel
  #
  # A unique instance of a television BroadcastService on a CableOrSatelliteService lineup.
  class TelevisionChannel < Base
    include Mixins::TelevisionChannel
  end
end
