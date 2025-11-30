require "active_support/concern"

module SchemaOrg
  module Mixins
    module Movie
      extend ActiveSupport::Concern

      include CreativeWork

      included do
        option :actors, optional: true # An actor, e.g. in TV, radio, movie, video games etc. Actors can be associated with individual items or with a series, episode, clip. Superseded by `actor`.
        option :country_of_origin, optional: true # The country of origin of something, including products as well as creative  works such as movie and TV content.  In the case of TV and movie, this would be the country of the principle offices of the production company or individual responsible for the movie. For other kinds of [[CreativeWork]] it is difficult to provide fully general guidance, and properties such as [[contentLocation]] and [[locationCreated]] may be more applicable.  In the case of products, the country of origin of the product. The exact interpretation of this may vary by context and product type, and cannot be fully enumerated here.
        option :directors, optional: true # A director of e.g. TV, radio, movie, video games etc. content. Directors can be associated with individual items or with a series, episode, clip. Superseded by `director`.
        option :music_by, optional: true # The composer of the soundtrack.
        option :production_company, optional: true # The production company or studio responsible for the item, e.g. series, video game, episode etc.
        option :subtitle_language, optional: true # Languages in which subtitles/captions are available, in [IETF BCP 47 standard format](http://tools.ietf.org/html/bcp47).
        option :trailer, optional: true # The trailer of a movie or TV/radio series, season, episode, etc.
        option :actor, optional: true # An actor (individual or a group), e.g. in TV, radio, movie, video games etc., or in an event. Actors can be associated with individual items or with a series, episode, clip. Supersedes `actors`.
        option :director, optional: true # A director of e.g. TV, radio, movie, video gaming etc. content, or of an event. Directors can be associated with individual items or with a series, episode, clip. Supersedes `directors`.
        option :duration, optional: true # The duration of the item (movie, audio recording, event, etc.) in [ISO 8601 duration format](http://en.wikipedia.org/wiki/ISO_8601).
      end
    end
  end
end
