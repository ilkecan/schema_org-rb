module SchemaOrg
  # https://schema.org/TrainStation
  #
  # A train station.
  class TrainStation < Base
    include Mixins::TrainStation
  end
end
