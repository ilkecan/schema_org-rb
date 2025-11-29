module SchemaOrg
  # https://schema.org/PetStore
  #
  # A pet store.
  class PetStore < Base
    include Mixins::PetStore
  end
end
