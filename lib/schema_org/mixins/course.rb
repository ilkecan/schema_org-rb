# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module Course
      include CreativeWork
      include LearningResource

      def self.schema_property_definitions
        {
          available_language: {
            schema_name: "availableLanguage",
            schema_url: "https://schema.org/availableLanguage",
            comment_lines: ["A language someone may use with or at the item, service or place. Please use one of the language codes from the [IETF BCP 47 standard](http://tools.ietf.org/html/bcp47). See also [[inLanguage]]."].freeze,
            ranges: ["Language", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          course_code: {
            schema_name: "courseCode",
            schema_url: "https://schema.org/courseCode",
            comment_lines: ["The identifier for the [[Course]] used by the course [[provider]] (e.g. CS101 or 6.001)."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          course_prerequisites: {
            schema_name: "coursePrerequisites",
            schema_url: "https://schema.org/coursePrerequisites",
            comment_lines: ["Requirements for taking the Course. May be completion of another [[Course]] or a textual description like \"permission of instructor\". Requirements may be a pre-requisite competency, referenced using [[AlignmentObject]]."].freeze,
            ranges: ["AlignmentObject", "Course", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          educational_credential_awarded: {
            schema_name: "educationalCredentialAwarded",
            schema_url: "https://schema.org/educationalCredentialAwarded",
            comment_lines: ["A description of the qualification, award, certificate, diploma or other educational credential awarded as a consequence of successful completion of this course or program."].freeze,
            ranges: ["EducationalOccupationalCredential", "Text", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          financial_aid_eligible: {
            schema_name: "financialAidEligible",
            schema_url: "https://schema.org/financialAidEligible",
            comment_lines: ["A financial aid type or program which students may use to pay for tuition or fees associated with the program."].freeze,
            ranges: ["DefinedTerm", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          has_course_instance: {
            schema_name: "hasCourseInstance",
            schema_url: "https://schema.org/hasCourseInstance",
            comment_lines: ["An offering of the course at a specific time and place or through specific media or mode of study or to a specific section of students."].freeze,
            ranges: ["CourseInstance"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          number_of_credits: {
            schema_name: "numberOfCredits",
            schema_url: "https://schema.org/numberOfCredits",
            comment_lines: ["The number of credits or units awarded by a Course or required to complete an EducationalOccupationalProgram."].freeze,
            ranges: ["Integer", "StructuredValue"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          occupational_credential_awarded: {
            schema_name: "occupationalCredentialAwarded",
            schema_url: "https://schema.org/occupationalCredentialAwarded",
            comment_lines: ["A description of the qualification, award, certificate, diploma or other occupational credential awarded as a consequence of successful completion of this course or program."].freeze,
            ranges: ["EducationalOccupationalCredential", "Text", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          syllabus_sections: {
            schema_name: "syllabusSections",
            schema_url: "https://schema.org/syllabusSections",
            comment_lines: ["Indicates (typically several) Syllabus entities that lay out what each section of the overall course will cover."].freeze,
            ranges: ["Syllabus"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          total_historical_enrollment: {
            schema_name: "totalHistoricalEnrollment",
            schema_url: "https://schema.org/totalHistoricalEnrollment",
            comment_lines: ["The total number of students that have enrolled in the history of the course."].freeze,
            ranges: ["Integer"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # A language someone may use with or at the item, service or place. Please use one of the language codes from the [IETF BCP 47 standard](http://tools.ietf.org/html/bcp47). See also [[inLanguage]].
      def available_language
        read_property(:available_language)
      end

      # A language someone may use with or at the item, service or place. Please use one of the language codes from the [IETF BCP 47 standard](http://tools.ietf.org/html/bcp47). See also [[inLanguage]].
      def available_language=(value)
        write_property(:available_language, value)
      end

      # The identifier for the [[Course]] used by the course [[provider]] (e.g. CS101 or 6.001).
      def course_code
        read_property(:course_code)
      end

      # The identifier for the [[Course]] used by the course [[provider]] (e.g. CS101 or 6.001).
      def course_code=(value)
        write_property(:course_code, value)
      end

      # Requirements for taking the Course. May be completion of another [[Course]] or a textual description like "permission of instructor". Requirements may be a pre-requisite competency, referenced using [[AlignmentObject]].
      def course_prerequisites
        read_property(:course_prerequisites)
      end

      # Requirements for taking the Course. May be completion of another [[Course]] or a textual description like "permission of instructor". Requirements may be a pre-requisite competency, referenced using [[AlignmentObject]].
      def course_prerequisites=(value)
        write_property(:course_prerequisites, value)
      end

      # A description of the qualification, award, certificate, diploma or other educational credential awarded as a consequence of successful completion of this course or program.
      def educational_credential_awarded
        read_property(:educational_credential_awarded)
      end

      # A description of the qualification, award, certificate, diploma or other educational credential awarded as a consequence of successful completion of this course or program.
      def educational_credential_awarded=(value)
        write_property(:educational_credential_awarded, value)
      end

      # A financial aid type or program which students may use to pay for tuition or fees associated with the program.
      def financial_aid_eligible
        read_property(:financial_aid_eligible)
      end

      # A financial aid type or program which students may use to pay for tuition or fees associated with the program.
      def financial_aid_eligible=(value)
        write_property(:financial_aid_eligible, value)
      end

      # An offering of the course at a specific time and place or through specific media or mode of study or to a specific section of students.
      def has_course_instance
        read_property(:has_course_instance)
      end

      # An offering of the course at a specific time and place or through specific media or mode of study or to a specific section of students.
      def has_course_instance=(value)
        write_property(:has_course_instance, value)
      end

      # The number of credits or units awarded by a Course or required to complete an EducationalOccupationalProgram.
      def number_of_credits
        read_property(:number_of_credits)
      end

      # The number of credits or units awarded by a Course or required to complete an EducationalOccupationalProgram.
      def number_of_credits=(value)
        write_property(:number_of_credits, value)
      end

      # A description of the qualification, award, certificate, diploma or other occupational credential awarded as a consequence of successful completion of this course or program.
      def occupational_credential_awarded
        read_property(:occupational_credential_awarded)
      end

      # A description of the qualification, award, certificate, diploma or other occupational credential awarded as a consequence of successful completion of this course or program.
      def occupational_credential_awarded=(value)
        write_property(:occupational_credential_awarded, value)
      end

      # Indicates (typically several) Syllabus entities that lay out what each section of the overall course will cover.
      def syllabus_sections
        read_property(:syllabus_sections)
      end

      # Indicates (typically several) Syllabus entities that lay out what each section of the overall course will cover.
      def syllabus_sections=(value)
        write_property(:syllabus_sections, value)
      end

      # The total number of students that have enrolled in the history of the course.
      def total_historical_enrollment
        read_property(:total_historical_enrollment)
      end

      # The total number of students that have enrolled in the history of the course.
      def total_historical_enrollment=(value)
        write_property(:total_historical_enrollment, value)
      end
    end
  end
end
