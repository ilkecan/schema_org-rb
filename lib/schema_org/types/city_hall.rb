module SchemaOrg
  # https://schema.org/CityHall
  #
  # A city hall.
  class CityHall < Base
    include Mixins::CityHall
  end
end
