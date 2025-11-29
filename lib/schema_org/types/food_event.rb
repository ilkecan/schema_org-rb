module SchemaOrg
  # https://schema.org/FoodEvent
  #
  # Event type: Food event.
  class FoodEvent < Base
    include Mixins::FoodEvent
  end
end
