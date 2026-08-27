# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module ExercisePlan
      include CreativeWork
      include PhysicalActivity

      def self.schema_property_definitions
        {
          activity_duration: {
            schema_name: "activityDuration",
            schema_url: "https://schema.org/activityDuration",
            comment_lines: ["Length of time to engage in the activity."].freeze,
            ranges: ["Duration", "QuantitativeValue"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          activity_frequency: {
            schema_name: "activityFrequency",
            schema_url: "https://schema.org/activityFrequency",
            comment_lines: ["How often one should engage in the activity."].freeze,
            ranges: ["QuantitativeValue", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          additional_variable: {
            schema_name: "additionalVariable",
            schema_url: "https://schema.org/additionalVariable",
            comment_lines: ["Any additional component of the exercise prescription that may need to be articulated to the patient. This may include the order of exercises, the number of repetitions of movement, quantitative distance, progressions over time, etc."].freeze,
            ranges: ["Text"].freeze,
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
          intensity: {
            schema_name: "intensity",
            schema_url: "https://schema.org/intensity",
            comment_lines: ["Quantitative measure gauging the degree of force involved in the exercise, for example, heartbeats per minute. May include the velocity of the movement."].freeze,
            ranges: ["QuantitativeValue", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          repetitions: {
            schema_name: "repetitions",
            schema_url: "https://schema.org/repetitions",
            comment_lines: ["Number of times one should repeat the activity."].freeze,
            ranges: ["Number", "QuantitativeValue"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          rest_periods: {
            schema_name: "restPeriods",
            schema_url: "https://schema.org/restPeriods",
            comment_lines: ["How often one should break from the activity."].freeze,
            ranges: ["QuantitativeValue", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          workload: {
            schema_name: "workload",
            schema_url: "https://schema.org/workload",
            comment_lines: ["Quantitative measure of the physiologic output of the exercise; also referred to as energy expenditure."].freeze,
            ranges: ["Energy", "QuantitativeValue"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # Length of time to engage in the activity.
      def activity_duration
        read_property(:activity_duration)
      end

      # Length of time to engage in the activity.
      def activity_duration=(value)
        write_property(:activity_duration, value)
      end

      # How often one should engage in the activity.
      def activity_frequency
        read_property(:activity_frequency)
      end

      # How often one should engage in the activity.
      def activity_frequency=(value)
        write_property(:activity_frequency, value)
      end

      # Any additional component of the exercise prescription that may need to be articulated to the patient. This may include the order of exercises, the number of repetitions of movement, quantitative distance, progressions over time, etc.
      def additional_variable
        read_property(:additional_variable)
      end

      # Any additional component of the exercise prescription that may need to be articulated to the patient. This may include the order of exercises, the number of repetitions of movement, quantitative distance, progressions over time, etc.
      def additional_variable=(value)
        write_property(:additional_variable, value)
      end

      # Type(s) of exercise or activity, such as strength training, flexibility training, aerobics, cardiac rehabilitation, etc.
      def exercise_type
        read_property(:exercise_type)
      end

      # Type(s) of exercise or activity, such as strength training, flexibility training, aerobics, cardiac rehabilitation, etc.
      def exercise_type=(value)
        write_property(:exercise_type, value)
      end

      # Quantitative measure gauging the degree of force involved in the exercise, for example, heartbeats per minute. May include the velocity of the movement.
      def intensity
        read_property(:intensity)
      end

      # Quantitative measure gauging the degree of force involved in the exercise, for example, heartbeats per minute. May include the velocity of the movement.
      def intensity=(value)
        write_property(:intensity, value)
      end

      # Number of times one should repeat the activity.
      def repetitions
        read_property(:repetitions)
      end

      # Number of times one should repeat the activity.
      def repetitions=(value)
        write_property(:repetitions, value)
      end

      # How often one should break from the activity.
      def rest_periods
        read_property(:rest_periods)
      end

      # How often one should break from the activity.
      def rest_periods=(value)
        write_property(:rest_periods, value)
      end

      # Quantitative measure of the physiologic output of the exercise; also referred to as energy expenditure.
      def workload
        read_property(:workload)
      end

      # Quantitative measure of the physiologic output of the exercise; also referred to as energy expenditure.
      def workload=(value)
        write_property(:workload, value)
      end
    end
  end
end
