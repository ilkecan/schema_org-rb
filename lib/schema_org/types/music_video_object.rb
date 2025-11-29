module SchemaOrg
  # https://schema.org/MusicVideoObject
  #
  # A music video file.
  class MusicVideoObject < Base
    include Mixins::MusicVideoObject
  end
end
