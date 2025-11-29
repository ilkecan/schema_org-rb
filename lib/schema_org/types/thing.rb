module SchemaOrg
  # https://schema.org/Thing
  #
  # The most generic type of item.
  class Thing < Base
    include Mixins::Thing
  end
end
