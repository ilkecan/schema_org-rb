module SchemaOrg
  # https://schema.org/RadioClip
  #
  # A short radio program or a segment/part of a radio program.
  class RadioClip < Base
    include Mixins::RadioClip
  end
end
