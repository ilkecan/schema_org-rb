module SchemaOrg
  # https://schema.org/Vehicle
  #
  # A vehicle is a device that is designed or used to transport people or cargo over land, water, air, or through space.
  class Vehicle < Base
    include Mixins::Vehicle
  end
end
