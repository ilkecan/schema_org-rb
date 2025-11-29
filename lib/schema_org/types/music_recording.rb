module SchemaOrg
  # https://schema.org/MusicRecording
  #
  # A music recording (track), usually a single song.
  class MusicRecording < Base
    include Mixins::MusicRecording
  end
end
