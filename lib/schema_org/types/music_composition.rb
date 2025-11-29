module SchemaOrg
  # https://schema.org/MusicComposition
  #
  # A musical composition.
  class MusicComposition < Base
    include Mixins::MusicComposition
  end
end
