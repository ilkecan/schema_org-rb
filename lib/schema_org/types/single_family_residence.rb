module SchemaOrg
  # https://schema.org/SingleFamilyResidence
  #
  # Residence type: Single-family home.
  class SingleFamilyResidence < Base
    include Mixins::SingleFamilyResidence
  end
end
