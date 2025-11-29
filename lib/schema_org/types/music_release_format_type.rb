module SchemaOrg
  # https://schema.org/MusicReleaseFormatType
  #
  # Format of this release (the type of recording media used, i.e. compact disc, digital media, LP, etc.).
  class MusicReleaseFormatType < Base
    include Mixins::MusicReleaseFormatType
  end
end
