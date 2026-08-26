module SchemaOrg
  module Mixins
    module Course
      include CreativeWork

      def self.schema_property_definitions
        {
          :course_code => {
            schema_name: "courseCode",
            ranges: ["Text"],
          }.freeze,
          :course_prerequisites => {
            schema_name: "coursePrerequisites",
            ranges: ["AlignmentObject", "Course", "Text"],
          }.freeze,
          :has_course_instance => {
            schema_name: "hasCourseInstance",
            ranges: ["CourseInstance"],
          }.freeze,
        }.freeze
      end

      def course_code
        read_property(:course_code)
      end

      def course_code=(value)
        write_property(:course_code, value)
      end

      def course_prerequisites
        read_property(:course_prerequisites)
      end

      def course_prerequisites=(value)
        write_property(:course_prerequisites, value)
      end

      def has_course_instance
        read_property(:has_course_instance)
      end

      def has_course_instance=(value)
        write_property(:has_course_instance, value)
      end

    end
  end
end
