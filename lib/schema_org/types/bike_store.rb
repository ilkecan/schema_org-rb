module SchemaOrg
  # https://schema.org/BikeStore
  #
  # A bike store.
  class BikeStore < Base
    include Mixins::BikeStore
  end
end
