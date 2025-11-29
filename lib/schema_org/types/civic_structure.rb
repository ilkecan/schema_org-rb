module SchemaOrg
  # https://schema.org/CivicStructure
  #
  # A public structure, such as a town hall or concert hall.
  class CivicStructure < Base
    include Mixins::CivicStructure
  end
end
