module SchemaOrg
  # https://schema.org/ArtGallery
  #
  # An art gallery.
  class ArtGallery < Base
    include Mixins::ArtGallery
  end
end
