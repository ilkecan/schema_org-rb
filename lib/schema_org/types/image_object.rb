module SchemaOrg
  # https://schema.org/ImageObject
  #
  # An image file.
  class ImageObject < Base
    include Mixins::ImageObject
  end
end
