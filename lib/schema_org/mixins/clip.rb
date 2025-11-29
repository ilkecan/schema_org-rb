require "active_support/concern"

module SchemaOrg
  module Mixins
    module Clip
      extend ActiveSupport::Concern

      include CreativeWork

      included do
        option :actors # An actor, e.g. in TV, radio, movie, video games etc. Actors can be associated with individual items or with a series, episode, clip.
        option :clip_number # Position of the clip within an ordered group of clips.
        option :directors # A director of e.g. TV, radio, movie, video games etc. content. Directors can be associated with individual items or with a series, episode, clip.
        option :music_by # The composer of the soundtrack.
        option :part_of_episode # The episode to which this clip belongs.
        option :part_of_season # The season to which this episode belongs.
        option :actor # An actor (individual or a group), e.g. in TV, radio, movie, video games etc., or in an event. Actors can be associated with individual items or with a series, episode, clip.
        option :director # A director of e.g. TV, radio, movie, video gaming etc. content, or of an event. Directors can be associated with individual items or with a series, episode, clip.
        option :part_of_series # The series to which this episode or season belongs.
      end
    end
  end
end
