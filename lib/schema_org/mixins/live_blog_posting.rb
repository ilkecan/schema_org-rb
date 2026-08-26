module SchemaOrg
  module Mixins
    module LiveBlogPosting
      include BlogPosting

      def self.schema_property_definitions
        {
          :coverage_end_time => {
            schema_name: "coverageEndTime",
            ranges: ["DateTime"],
          }.freeze,
          :coverage_start_time => {
            schema_name: "coverageStartTime",
            ranges: ["DateTime"],
          }.freeze,
          :live_blog_update => {
            schema_name: "liveBlogUpdate",
            ranges: ["BlogPosting"],
          }.freeze,
        }.freeze
      end

      def coverage_end_time
        read_property(:coverage_end_time)
      end

      def coverage_end_time=(value)
        write_property(:coverage_end_time, value)
      end

      def coverage_start_time
        read_property(:coverage_start_time)
      end

      def coverage_start_time=(value)
        write_property(:coverage_start_time, value)
      end

      def live_blog_update
        read_property(:live_blog_update)
      end

      def live_blog_update=(value)
        write_property(:live_blog_update, value)
      end

    end
  end
end
