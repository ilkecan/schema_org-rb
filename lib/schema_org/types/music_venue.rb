module SchemaOrg
  # https://schema.org/MusicVenue
  #
  # A music venue.
  class MusicVenue < Base
    include Mixins::MusicVenue
  end
end
