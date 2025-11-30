require "active_support/concern"

module SchemaOrg
  module Mixins
    module CreativeWorkSeason
      extend ActiveSupport::Concern

      include CreativeWork

      included do
        option :end_date # The end date and time of the item (in [ISO 8601 date format](http://en.wikipedia.org/wiki/ISO_8601)).
        option :episodes # An episode of a TV/radio series or season. Superseded by `episode`.
        option :number_of_episodes # The number of episodes in this season or series.
        option :production_company # The production company or studio responsible for the item, e.g. series, video game, episode etc.
        option :season_number # Position of the season within an ordered group of seasons.
        option :start_date # The start date and time of the item (in [ISO 8601 date format](http://en.wikipedia.org/wiki/ISO_8601)).
        option :trailer # The trailer of a movie or TV/radio series, season, episode, etc.
        option :actor # An actor (individual or a group), e.g. in TV, radio, movie, video games etc., or in an event. Actors can be associated with individual items or with a series, episode, clip. Supersedes `actors`.
        option :director # A director of e.g. TV, radio, movie, video gaming etc. content, or of an event. Directors can be associated with individual items or with a series, episode, clip. Supersedes `directors`.
        option :episode # An episode of a TV, radio or game media within a series or season. Supersedes `episodes`.
        option :part_of_series # The series to which this episode or season belongs. Supersedes `part_of_tv_series`.
      end
    end
  end
end
