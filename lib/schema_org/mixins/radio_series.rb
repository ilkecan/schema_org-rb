require "active_support/concern"

module SchemaOrg
  module Mixins
    module RadioSeries
      extend ActiveSupport::Concern

      include CreativeWorkSeries

      included do
        option :actors # An actor, e.g. in TV, radio, movie, video games etc. Actors can be associated with individual items or with a series, episode, clip.
        option :directors # A director of e.g. TV, radio, movie, video games etc. content. Directors can be associated with individual items or with a series, episode, clip.
        option :episodes # An episode of a TV/radio series or season.
        option :music_by # The composer of the soundtrack.
        option :number_of_episodes # The number of episodes in this season or series.
        option :number_of_seasons # The number of seasons in this series.
        option :production_company # The production company or studio responsible for the item, e.g. series, video game, episode etc.
        option :seasons # A season in a media series.
        option :trailer # The trailer of a movie or TV/radio series, season, episode, etc.
        option :actor # An actor (individual or a group), e.g. in TV, radio, movie, video games etc., or in an event. Actors can be associated with individual items or with a series, episode, clip.
        option :contains_season # A season that is part of the media series.
        option :director # A director of e.g. TV, radio, movie, video gaming etc. content, or of an event. Directors can be associated with individual items or with a series, episode, clip.
        option :episode # An episode of a TV, radio or game media within a series or season.
        option :season # A season in a media series.
      end
    end
  end
end
