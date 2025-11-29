module SchemaOrg
  # https://schema.org/ElectronicsStore
  #
  # An electronics store.
  class ElectronicsStore < Base
    include Mixins::ElectronicsStore
  end
end
