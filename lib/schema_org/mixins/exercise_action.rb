require "active_support/concern"

module SchemaOrg
  module Mixins
    module ExerciseAction
      extend ActiveSupport::Concern

      include PlayAction

      included do
        option :course, optional: true # A sub property of location. The course where this action was taken. Superseded by `exercise_course`.
        option :distance, optional: true # The distance travelled, e.g. exercising or travelling.
        option :from_location, optional: true # A sub property of location. The original location of the object or the agent before the action.
        option :opponent, optional: true # A sub property of participant. The opponent on this action.
        option :sports_activity_location, optional: true # A sub property of location. The sports activity location where this action occurred.
        option :sports_event, optional: true # A sub property of location. The sports event where this action occurred.
        option :sports_team, optional: true # A sub property of participant. The sports team that participated on this action.
        option :to_location, optional: true # A sub property of location. The final location of the object or the agent after the action.
        option :exercise_course, optional: true # A sub property of location. The course where this action was taken. Supersedes `course`.
      end
    end
  end
end
