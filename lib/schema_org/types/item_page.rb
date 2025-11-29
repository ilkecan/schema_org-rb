module SchemaOrg
  # https://schema.org/ItemPage
  #
  # A page devoted to a single item, such as a particular product or hotel.
  class ItemPage < Base
    include Mixins::ItemPage
  end
end
