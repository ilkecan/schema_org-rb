require "active_support/concern"

module SchemaOrg
  module Mixins
    module TVSeries
      extend ActiveSupport::Concern

      include CreativeWork
      include CreativeWorkSeries

      included do
        option :actors # An actor, e.g. in TV, radio, movie, video games etc. Actors can be associated with individual items or with a series, episode, clip. Superseded by `actor`.
        option :country_of_origin # The country of origin of something, including products as well as creative  works such as movie and TV content.  In the case of TV and movie, this would be the country of the principle offices of the production company or individual responsible for the movie. For other kinds of [[CreativeWork]] it is difficult to provide fully general guidance, and properties such as [[contentLocation]] and [[locationCreated]] may be more applicable.  In the case of products, the country of origin of the product. The exact interpretation of this may vary by context and product type, and cannot be fully enumerated here.
        option :directors # A director of e.g. TV, radio, movie, video games etc. content. Directors can be associated with individual items or with a series, episode, clip. Superseded by `director`.
        option :episodes # An episode of a TV/radio series or season. Superseded by `episode`.
        option :music_by # The composer of the soundtrack.
        option :number_of_episodes # The number of episodes in this season or series.
        option :number_of_seasons # The number of seasons in this series.
        option :production_company # The production company or studio responsible for the item, e.g. series, video game, episode etc.
        option :seasons # A season in a media series. Superseded by `season`.
        option :trailer # The trailer of a movie or TV/radio series, season, episode, etc.
        option :actor # An actor (individual or a group), e.g. in TV, radio, movie, video games etc., or in an event. Actors can be associated with individual items or with a series, episode, clip. Supersedes `actors`.
        option :contains_season # A season that is part of the media series. Supersedes `season`.
        option :director # A director of e.g. TV, radio, movie, video gaming etc. content, or of an event. Directors can be associated with individual items or with a series, episode, clip. Supersedes `directors`.
        option :episode # An episode of a TV, radio or game media within a series or season. Supersedes `episodes`.
        option :season # A season in a media series. Supersedes `seasons`. Superseded by `contains_season`.
      end
    end
  end
end
