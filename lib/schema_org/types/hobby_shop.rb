module SchemaOrg
  # https://schema.org/HobbyShop
  #
  # A store that sells materials useful or necessary for various hobbies.
  class HobbyShop < Base
    include Mixins::HobbyShop
  end
end
