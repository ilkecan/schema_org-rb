module SchemaOrg
  # https://schema.org/Hospital
  #
  # A hospital.
  class Hospital < Base
    include Mixins::Hospital
  end
end
