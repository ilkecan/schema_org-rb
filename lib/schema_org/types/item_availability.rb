module SchemaOrg
  # https://schema.org/ItemAvailability
  #
  # A list of possible product availability options.
  class ItemAvailability < Base
    include Mixins::ItemAvailability
  end
end
