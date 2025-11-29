module SchemaOrg
  # https://schema.org/Store
  #
  # A retail good store.
  class Store < Base
    include Mixins::Store
  end
end
