# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module ExerciseAction
      include PlayAction

      def self.schema_property_definitions
        {
          course: {
            schema_name: "course",
            schema_url: "https://schema.org/course",
            comment_lines: ["A sub property of location. The course where this action was taken."].freeze,
            ranges: ["Place"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: "exerciseCourse",
            supersedes: nil
          }.freeze,
          diet: {
            schema_name: "diet",
            schema_url: "https://schema.org/diet",
            comment_lines: ["A sub property of instrument. The diet used in this action."].freeze,
            ranges: ["Diet"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          distance: {
            schema_name: "distance",
            schema_url: "https://schema.org/distance",
            comment_lines: ["The distance travelled, e.g. exercising or travelling."].freeze,
            ranges: ["Distance"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          exercise_course: {
            schema_name: "exerciseCourse",
            schema_url: "https://schema.org/exerciseCourse",
            comment_lines: ["A sub property of location. The course where this action was taken."].freeze,
            ranges: ["Place"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: "course"
          }.freeze,
          exercise_plan: {
            schema_name: "exercisePlan",
            schema_url: "https://schema.org/exercisePlan",
            comment_lines: ["A sub property of instrument. The exercise plan used on this action."].freeze,
            ranges: ["ExercisePlan"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          exercise_related_diet: {
            schema_name: "exerciseRelatedDiet",
            schema_url: "https://schema.org/exerciseRelatedDiet",
            comment_lines: ["A sub property of instrument. The diet used in this action."].freeze,
            ranges: ["Diet"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          exercise_type: {
            schema_name: "exerciseType",
            schema_url: "https://schema.org/exerciseType",
            comment_lines: ["Type(s) of exercise or activity, such as strength training, flexibility training, aerobics, cardiac rehabilitation, etc."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          from_location: {
            schema_name: "fromLocation",
            schema_url: "https://schema.org/fromLocation",
            comment_lines: ["A sub property of location. The original location of the object or the agent before the action."].freeze,
            ranges: ["Place"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          opponent: {
            schema_name: "opponent",
            schema_url: "https://schema.org/opponent",
            comment_lines: ["A sub property of participant. The opponent on this action."].freeze,
            ranges: ["Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          sports_activity_location: {
            schema_name: "sportsActivityLocation",
            schema_url: "https://schema.org/sportsActivityLocation",
            comment_lines: ["A sub property of location. The sports activity location where this action occurred."].freeze,
            ranges: ["SportsActivityLocation"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          sports_event: {
            schema_name: "sportsEvent",
            schema_url: "https://schema.org/sportsEvent",
            comment_lines: ["A sub property of location. The sports event where this action occurred."].freeze,
            ranges: ["SportsEvent"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          sports_team: {
            schema_name: "sportsTeam",
            schema_url: "https://schema.org/sportsTeam",
            comment_lines: ["A sub property of participant. The sports team that participated on this action."].freeze,
            ranges: ["SportsTeam"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          to_location: {
            schema_name: "toLocation",
            schema_url: "https://schema.org/toLocation",
            comment_lines: ["A sub property of location. The final location of the object or the agent after the action."].freeze,
            ranges: ["Place"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # A sub property of location. The course where this action was taken.
      # Superseded by `exerciseCourse`.
      def course
        read_property(:course)
      end

      # A sub property of location. The course where this action was taken.
      # Superseded by `exerciseCourse`.
      def course=(value)
        write_property(:course, value)
      end

      # A sub property of instrument. The diet used in this action.
      def diet
        read_property(:diet)
      end

      # A sub property of instrument. The diet used in this action.
      def diet=(value)
        write_property(:diet, value)
      end

      # The distance travelled, e.g. exercising or travelling.
      def distance
        read_property(:distance)
      end

      # The distance travelled, e.g. exercising or travelling.
      def distance=(value)
        write_property(:distance, value)
      end

      # A sub property of location. The course where this action was taken.
      # Supersedes `course`.
      def exercise_course
        read_property(:exercise_course)
      end

      # A sub property of location. The course where this action was taken.
      # Supersedes `course`.
      def exercise_course=(value)
        write_property(:exercise_course, value)
      end

      # A sub property of instrument. The exercise plan used on this action.
      def exercise_plan
        read_property(:exercise_plan)
      end

      # A sub property of instrument. The exercise plan used on this action.
      def exercise_plan=(value)
        write_property(:exercise_plan, value)
      end

      # A sub property of instrument. The diet used in this action.
      def exercise_related_diet
        read_property(:exercise_related_diet)
      end

      # A sub property of instrument. The diet used in this action.
      def exercise_related_diet=(value)
        write_property(:exercise_related_diet, value)
      end

      # Type(s) of exercise or activity, such as strength training, flexibility training, aerobics, cardiac rehabilitation, etc.
      def exercise_type
        read_property(:exercise_type)
      end

      # Type(s) of exercise or activity, such as strength training, flexibility training, aerobics, cardiac rehabilitation, etc.
      def exercise_type=(value)
        write_property(:exercise_type, value)
      end

      # A sub property of location. The original location of the object or the agent before the action.
      def from_location
        read_property(:from_location)
      end

      # A sub property of location. The original location of the object or the agent before the action.
      def from_location=(value)
        write_property(:from_location, value)
      end

      # A sub property of participant. The opponent on this action.
      def opponent
        read_property(:opponent)
      end

      # A sub property of participant. The opponent on this action.
      def opponent=(value)
        write_property(:opponent, value)
      end

      # A sub property of location. The sports activity location where this action occurred.
      def sports_activity_location
        read_property(:sports_activity_location)
      end

      # A sub property of location. The sports activity location where this action occurred.
      def sports_activity_location=(value)
        write_property(:sports_activity_location, value)
      end

      # A sub property of location. The sports event where this action occurred.
      def sports_event
        read_property(:sports_event)
      end

      # A sub property of location. The sports event where this action occurred.
      def sports_event=(value)
        write_property(:sports_event, value)
      end

      # A sub property of participant. The sports team that participated on this action.
      def sports_team
        read_property(:sports_team)
      end

      # A sub property of participant. The sports team that participated on this action.
      def sports_team=(value)
        write_property(:sports_team, value)
      end

      # A sub property of location. The final location of the object or the agent after the action.
      def to_location
        read_property(:to_location)
      end

      # A sub property of location. The final location of the object or the agent after the action.
      def to_location=(value)
        write_property(:to_location, value)
      end
    end
  end
end
