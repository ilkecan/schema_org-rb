require "active_support/concern"

module SchemaOrg
  module Mixins
    module Episode
      extend ActiveSupport::Concern

      include CreativeWork

      included do
        option :actors # An actor, e.g. in TV, radio, movie, video games etc. Actors can be associated with individual items or with a series, episode, clip. Superseded by `actor`.
        option :directors # A director of e.g. TV, radio, movie, video games etc. content. Directors can be associated with individual items or with a series, episode, clip. Superseded by `director`.
        option :episode_number # Position of the episode within an ordered group of episodes.
        option :music_by # The composer of the soundtrack.
        option :part_of_season # The season to which this episode belongs.
        option :production_company # The production company or studio responsible for the item, e.g. series, video game, episode etc.
        option :trailer # The trailer of a movie or TV/radio series, season, episode, etc.
        option :actor # An actor (individual or a group), e.g. in TV, radio, movie, video games etc., or in an event. Actors can be associated with individual items or with a series, episode, clip. Supersedes `actors`.
        option :director # A director of e.g. TV, radio, movie, video gaming etc. content, or of an event. Directors can be associated with individual items or with a series, episode, clip. Supersedes `directors`.
        option :duration # The duration of the item (movie, audio recording, event, etc.) in [ISO 8601 duration format](http://en.wikipedia.org/wiki/ISO_8601).
        option :part_of_series # The series to which this episode or season belongs. Supersedes `part_of_tv_series`.
      end
    end
  end
end
