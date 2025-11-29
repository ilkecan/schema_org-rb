module SchemaOrg
  # https://schema.org/FoodEstablishment
  #
  # A food-related business.
  class FoodEstablishment < Base
    include Mixins::FoodEstablishment
  end
end
