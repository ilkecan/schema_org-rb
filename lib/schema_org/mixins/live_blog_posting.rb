# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module LiveBlogPosting
      include BlogPosting

      def self.schema_property_definitions
        {
          coverage_end_time: {
            schema_name: "coverageEndTime",
            schema_url: "https://schema.org/coverageEndTime",
            comment_lines: ["The time when the live blog will stop covering the Event. Note that coverage may continue after the Event concludes."].freeze,
            ranges: ["DateTime"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          coverage_start_time: {
            schema_name: "coverageStartTime",
            schema_url: "https://schema.org/coverageStartTime",
            comment_lines: ["The time when the live blog will begin covering the Event. Note that coverage may begin before the Event's start time. The LiveBlogPosting may also be created before coverage begins."].freeze,
            ranges: ["DateTime"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          live_blog_update: {
            schema_name: "liveBlogUpdate",
            schema_url: "https://schema.org/liveBlogUpdate",
            comment_lines: ["An update to the LiveBlog."].freeze,
            ranges: ["BlogPosting"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The time when the live blog will stop covering the Event. Note that coverage may continue after the Event concludes.
      def coverage_end_time
        read_property(:coverage_end_time)
      end

      # The time when the live blog will stop covering the Event. Note that coverage may continue after the Event concludes.
      def coverage_end_time=(value)
        write_property(:coverage_end_time, value)
      end

      # The time when the live blog will begin covering the Event. Note that coverage may begin before the Event's start time. The LiveBlogPosting may also be created before coverage begins.
      def coverage_start_time
        read_property(:coverage_start_time)
      end

      # The time when the live blog will begin covering the Event. Note that coverage may begin before the Event's start time. The LiveBlogPosting may also be created before coverage begins.
      def coverage_start_time=(value)
        write_property(:coverage_start_time, value)
      end

      # An update to the LiveBlog.
      def live_blog_update
        read_property(:live_blog_update)
      end

      # An update to the LiveBlog.
      def live_blog_update=(value)
        write_property(:live_blog_update, value)
      end
    end
  end
end
