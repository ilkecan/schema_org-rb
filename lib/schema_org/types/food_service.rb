module SchemaOrg
  # https://schema.org/FoodService
  #
  # A food service, like breakfast, lunch, or dinner.
  class FoodService < Base
    include Mixins::FoodService
  end
end
