module SchemaOrg
  # https://schema.org/WholesaleStore
  #
  # A wholesale store.
  class WholesaleStore < Base
    include Mixins::WholesaleStore
  end
end
