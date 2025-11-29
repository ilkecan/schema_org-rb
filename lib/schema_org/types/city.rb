module SchemaOrg
  # https://schema.org/City
  #
  # A city or town.
  class City < Base
    include Mixins::City
  end
end
