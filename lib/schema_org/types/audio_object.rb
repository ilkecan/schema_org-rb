module SchemaOrg
  # https://schema.org/AudioObject
  #
  # An audio file.
  class AudioObject < Base
    include Mixins::AudioObject
  end
end
