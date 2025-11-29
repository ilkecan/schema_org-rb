module SchemaOrg
  # https://schema.org/GardenStore
  #
  # A garden store.
  class GardenStore < Base
    include Mixins::GardenStore
  end
end
