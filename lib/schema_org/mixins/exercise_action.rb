module SchemaOrg
  module Mixins
    module ExerciseAction
      include PlayAction

      def self.schema_property_definitions
        {
          :course => {
            schema_name: "course",
            ranges: ["Place"],
          }.freeze,
          :distance => {
            schema_name: "distance",
            ranges: ["Distance"],
          }.freeze,
          :exercise_course => {
            schema_name: "exerciseCourse",
            ranges: ["Place"],
          }.freeze,
          :from_location => {
            schema_name: "fromLocation",
            ranges: ["Place"],
          }.freeze,
          :opponent => {
            schema_name: "opponent",
            ranges: ["Person"],
          }.freeze,
          :sports_activity_location => {
            schema_name: "sportsActivityLocation",
            ranges: ["SportsActivityLocation"],
          }.freeze,
          :sports_event => {
            schema_name: "sportsEvent",
            ranges: ["SportsEvent"],
          }.freeze,
          :sports_team => {
            schema_name: "sportsTeam",
            ranges: ["SportsTeam"],
          }.freeze,
          :to_location => {
            schema_name: "toLocation",
            ranges: ["Place"],
          }.freeze,
        }.freeze
      end

      def course
        read_property(:course)
      end

      def course=(value)
        write_property(:course, value)
      end

      def distance
        read_property(:distance)
      end

      def distance=(value)
        write_property(:distance, value)
      end

      def exercise_course
        read_property(:exercise_course)
      end

      def exercise_course=(value)
        write_property(:exercise_course, value)
      end

      def from_location
        read_property(:from_location)
      end

      def from_location=(value)
        write_property(:from_location, value)
      end

      def opponent
        read_property(:opponent)
      end

      def opponent=(value)
        write_property(:opponent, value)
      end

      def sports_activity_location
        read_property(:sports_activity_location)
      end

      def sports_activity_location=(value)
        write_property(:sports_activity_location, value)
      end

      def sports_event
        read_property(:sports_event)
      end

      def sports_event=(value)
        write_property(:sports_event, value)
      end

      def sports_team
        read_property(:sports_team)
      end

      def sports_team=(value)
        write_property(:sports_team, value)
      end

      def to_location
        read_property(:to_location)
      end

      def to_location=(value)
        write_property(:to_location, value)
      end

    end
  end
end
