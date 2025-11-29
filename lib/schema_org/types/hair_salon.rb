module SchemaOrg
  # https://schema.org/HairSalon
  #
  # A hair salon.
  class HairSalon < Base
    include Mixins::HairSalon
  end
end
