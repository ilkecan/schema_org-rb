module SchemaOrg
  # https://schema.org/Restaurant
  #
  # A restaurant.
  class Restaurant < Base
    include Mixins::Restaurant
  end
end
