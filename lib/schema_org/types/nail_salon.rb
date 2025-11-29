module SchemaOrg
  # https://schema.org/NailSalon
  #
  # A nail salon.
  class NailSalon < Base
    include Mixins::NailSalon
  end
end
