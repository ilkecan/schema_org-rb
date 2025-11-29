module SchemaOrg
  # https://schema.org/Menu
  #
  # A structured representation of food or drink items available from a FoodEstablishment.
  class Menu < Base
    include Mixins::Menu
  end
end
