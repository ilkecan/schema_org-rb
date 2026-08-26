# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module CourseInstance
      include Event

      def self.schema_property_definitions
        {
          course_mode: {
            schema_name: "courseMode",
            schema_url: "https://schema.org/courseMode",
            comment_lines: ["The medium or means of delivery of the course instance or the mode of study, either as a text label (e.g. \"online\", \"onsite\" or \"blended\"; \"synchronous\" or \"asynchronous\"; \"full-time\" or \"part-time\") or as a URL reference to a term from a controlled vocabulary (e.g. https://ceds.ed.gov/element/001311#Asynchronous)."].freeze,
            ranges: ["Text", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          course_schedule: {
            schema_name: "courseSchedule",
            schema_url: "https://schema.org/courseSchedule",
            comment_lines: ["Represents the length and pace of a course, expressed as a [[Schedule]]."].freeze,
            ranges: ["Schedule"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          course_workload: {
            schema_name: "courseWorkload",
            schema_url: "https://schema.org/courseWorkload",
            comment_lines: ["The amount of work expected of students taking the course, often provided as a figure per week or per month, and may be broken down by type. For example, \"2 hours of lectures, 1 hour of lab work and 3 hours of independent study per week\"."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          instructor: {
            schema_name: "instructor",
            schema_url: "https://schema.org/instructor",
            comment_lines: ["A person assigned to instruct or provide instructional assistance for the [[CourseInstance]]."].freeze,
            ranges: ["Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The medium or means of delivery of the course instance or the mode of study, either as a text label (e.g. "online", "onsite" or "blended"; "synchronous" or "asynchronous"; "full-time" or "part-time") or as a URL reference to a term from a controlled vocabulary (e.g. https://ceds.ed.gov/element/001311#Asynchronous).
      def course_mode
        read_property(:course_mode)
      end

      # The medium or means of delivery of the course instance or the mode of study, either as a text label (e.g. "online", "onsite" or "blended"; "synchronous" or "asynchronous"; "full-time" or "part-time") or as a URL reference to a term from a controlled vocabulary (e.g. https://ceds.ed.gov/element/001311#Asynchronous).
      def course_mode=(value)
        write_property(:course_mode, value)
      end

      # Represents the length and pace of a course, expressed as a [[Schedule]].
      def course_schedule
        read_property(:course_schedule)
      end

      # Represents the length and pace of a course, expressed as a [[Schedule]].
      def course_schedule=(value)
        write_property(:course_schedule, value)
      end

      # The amount of work expected of students taking the course, often provided as a figure per week or per month, and may be broken down by type. For example, "2 hours of lectures, 1 hour of lab work and 3 hours of independent study per week".
      def course_workload
        read_property(:course_workload)
      end

      # The amount of work expected of students taking the course, often provided as a figure per week or per month, and may be broken down by type. For example, "2 hours of lectures, 1 hour of lab work and 3 hours of independent study per week".
      def course_workload=(value)
        write_property(:course_workload, value)
      end

      # A person assigned to instruct or provide instructional assistance for the [[CourseInstance]].
      def instructor
        read_property(:instructor)
      end

      # A person assigned to instruct or provide instructional assistance for the [[CourseInstance]].
      def instructor=(value)
        write_property(:instructor, value)
      end
    end
  end
end
