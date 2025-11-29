module SchemaOrg
  # https://schema.org/VideoObject
  #
  # A video file.
  class VideoObject < Base
    include Mixins::VideoObject
  end
end
