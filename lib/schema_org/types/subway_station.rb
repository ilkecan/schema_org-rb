module SchemaOrg
  # https://schema.org/SubwayStation
  #
  # A subway station.
  class SubwayStation < Base
    include Mixins::SubwayStation
  end
end
