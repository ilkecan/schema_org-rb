module SchemaOrg
  # https://schema.org/VisualArtwork
  #
  # A work of art that is primarily visual in character.
  class VisualArtwork < Base
    include Mixins::VisualArtwork
  end
end
