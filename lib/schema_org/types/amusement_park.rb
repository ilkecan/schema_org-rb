module SchemaOrg
  # https://schema.org/AmusementPark
  #
  # An amusement park.
  class AmusementPark < Base
    include Mixins::AmusementPark
  end
end
