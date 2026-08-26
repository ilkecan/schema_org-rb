module SchemaOrg
  module Mixins
    module CourseInstance
      include Event

      def self.schema_property_definitions
        {
          :course_mode => {
            schema_name: "courseMode",
            ranges: ["Text", "URL"],
          }.freeze,
          :instructor => {
            schema_name: "instructor",
            ranges: ["Person"],
          }.freeze,
        }.freeze
      end

      def course_mode
        read_property(:course_mode)
      end

      def course_mode=(value)
        write_property(:course_mode, value)
      end

      def instructor
        read_property(:instructor)
      end

      def instructor=(value)
        write_property(:instructor, value)
      end

    end
  end
end
