require "active_support/concern"

module SchemaOrg
  module Mixins
    module MovieSeries
      extend ActiveSupport::Concern

      include CreativeWorkSeries

      included do
        option :actors # An actor, e.g. in TV, radio, movie, video games etc. Actors can be associated with individual items or with a series, episode, clip. Superseded by `actor`.
        option :directors # A director of e.g. TV, radio, movie, video games etc. content. Directors can be associated with individual items or with a series, episode, clip. Superseded by `director`.
        option :music_by # The composer of the soundtrack.
        option :production_company # The production company or studio responsible for the item, e.g. series, video game, episode etc.
        option :trailer # The trailer of a movie or TV/radio series, season, episode, etc.
        option :actor # An actor (individual or a group), e.g. in TV, radio, movie, video games etc., or in an event. Actors can be associated with individual items or with a series, episode, clip. Supersedes `actors`.
        option :director # A director of e.g. TV, radio, movie, video gaming etc. content, or of an event. Directors can be associated with individual items or with a series, episode, clip. Supersedes `directors`.
      end
    end
  end
end
