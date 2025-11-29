require "active_support/concern"

module SchemaOrg
  module Mixins
    module ExerciseAction
      extend ActiveSupport::Concern

      include PlayAction

      included do
        option :course # A sub property of location. The course where this action was taken.
        option :distance # The distance travelled, e.g. exercising or travelling.
        option :from_location # A sub property of location. The original location of the object or the agent before the action.
        option :opponent # A sub property of participant. The opponent on this action.
        option :sports_activity_location # A sub property of location. The sports activity location where this action occurred.
        option :sports_event # A sub property of location. The sports event where this action occurred.
        option :sports_team # A sub property of participant. The sports team that participated on this action.
        option :to_location # A sub property of location. The final location of the object or the agent after the action.
        option :exercise_course # A sub property of location. The course where this action was taken.
      end
    end
  end
end
