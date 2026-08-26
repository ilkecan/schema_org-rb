# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module Chapter
      include CreativeWork

      def self.schema_property_definitions
        {
          page_end: {
            schema_name: "pageEnd",
            schema_url: "https://schema.org/pageEnd",
            comment_lines: ["The page on which the work ends; for example \"138\" or \"xvi\"."].freeze,
            ranges: ["Integer", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          page_start: {
            schema_name: "pageStart",
            schema_url: "https://schema.org/pageStart",
            comment_lines: ["The page on which the work starts; for example \"135\" or \"xiii\"."].freeze,
            ranges: ["Integer", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          pagination: {
            schema_name: "pagination",
            schema_url: "https://schema.org/pagination",
            comment_lines: ["Any description of pages that is not separated into pageStart and pageEnd; for example, \"1-6, 9, 55\" or \"10-12, 46-49\"."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The page on which the work ends; for example "138" or "xvi".
      def page_end
        read_property(:page_end)
      end

      # The page on which the work ends; for example "138" or "xvi".
      def page_end=(value)
        write_property(:page_end, value)
      end

      # The page on which the work starts; for example "135" or "xiii".
      def page_start
        read_property(:page_start)
      end

      # The page on which the work starts; for example "135" or "xiii".
      def page_start=(value)
        write_property(:page_start, value)
      end

      # Any description of pages that is not separated into pageStart and pageEnd; for example, "1-6, 9, 55" or "10-12, 46-49".
      def pagination
        read_property(:pagination)
      end

      # Any description of pages that is not separated into pageStart and pageEnd; for example, "1-6, 9, 55" or "10-12, 46-49".
      def pagination=(value)
        write_property(:pagination, value)
      end
    end
  end
end
