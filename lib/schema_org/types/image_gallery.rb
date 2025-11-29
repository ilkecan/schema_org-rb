module SchemaOrg
  # https://schema.org/ImageGallery
  #
  # Web page type: Image gallery page.
  class ImageGallery < Base
    include Mixins::ImageGallery
  end
end
