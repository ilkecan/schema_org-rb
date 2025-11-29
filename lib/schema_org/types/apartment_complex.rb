module SchemaOrg
  # https://schema.org/ApartmentComplex
  #
  # Residence type: Apartment complex.
  class ApartmentComplex < Base
    include Mixins::ApartmentComplex
  end
end
