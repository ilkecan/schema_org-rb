require "active_support/concern"

module SchemaOrg
  module Mixins
    module Clip
      extend ActiveSupport::Concern

      include CreativeWork

      included do
        option :actors, optional: true # An actor, e.g. in TV, radio, movie, video games etc. Actors can be associated with individual items or with a series, episode, clip. Superseded by `actor`.
        option :clip_number, optional: true # Position of the clip within an ordered group of clips.
        option :directors, optional: true # A director of e.g. TV, radio, movie, video games etc. content. Directors can be associated with individual items or with a series, episode, clip. Superseded by `director`.
        option :music_by, optional: true # The composer of the soundtrack.
        option :part_of_episode, optional: true # The episode to which this clip belongs.
        option :part_of_season, optional: true # The season to which this episode belongs.
        option :actor, optional: true # An actor (individual or a group), e.g. in TV, radio, movie, video games etc., or in an event. Actors can be associated with individual items or with a series, episode, clip. Supersedes `actors`.
        option :director, optional: true # A director of e.g. TV, radio, movie, video gaming etc. content, or of an event. Directors can be associated with individual items or with a series, episode, clip. Supersedes `directors`.
        option :part_of_series, optional: true # The series to which this episode or season belongs. Supersedes `part_of_tv_series`.
      end
    end
  end
end
