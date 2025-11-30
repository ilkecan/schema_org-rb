require "active_support/concern"

module SchemaOrg
  module Mixins
    module RadioSeries
      extend ActiveSupport::Concern

      include CreativeWorkSeries

      included do
        option :actors, optional: true # An actor, e.g. in TV, radio, movie, video games etc. Actors can be associated with individual items or with a series, episode, clip. Superseded by `actor`.
        option :directors, optional: true # A director of e.g. TV, radio, movie, video games etc. content. Directors can be associated with individual items or with a series, episode, clip. Superseded by `director`.
        option :episodes, optional: true # An episode of a TV/radio series or season. Superseded by `episode`.
        option :music_by, optional: true # The composer of the soundtrack.
        option :number_of_episodes, optional: true # The number of episodes in this season or series.
        option :number_of_seasons, optional: true # The number of seasons in this series.
        option :production_company, optional: true # The production company or studio responsible for the item, e.g. series, video game, episode etc.
        option :seasons, optional: true # A season in a media series. Superseded by `season`.
        option :trailer, optional: true # The trailer of a movie or TV/radio series, season, episode, etc.
        option :actor, optional: true # An actor (individual or a group), e.g. in TV, radio, movie, video games etc., or in an event. Actors can be associated with individual items or with a series, episode, clip. Supersedes `actors`.
        option :contains_season, optional: true # A season that is part of the media series. Supersedes `season`.
        option :director, optional: true # A director of e.g. TV, radio, movie, video gaming etc. content, or of an event. Directors can be associated with individual items or with a series, episode, clip. Supersedes `directors`.
        option :episode, optional: true # An episode of a TV, radio or game media within a series or season. Supersedes `episodes`.
        option :season, optional: true # A season in a media series. Supersedes `seasons`. Superseded by `contains_season`.
      end
    end
  end
end
