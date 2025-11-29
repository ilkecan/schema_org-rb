module SchemaOrg
  # https://schema.org/TVSeries
  #
  # CreativeWorkSeries dedicated to TV broadcast and associated online delivery.
  class TVSeries < Base
    include Mixins::TVSeries
  end
end
