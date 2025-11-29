module SchemaOrg
  # https://schema.org/FastFoodRestaurant
  #
  # A fast-food restaurant.
  class FastFoodRestaurant < Base
    include Mixins::FastFoodRestaurant
  end
end
