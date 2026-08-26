# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module CreativeWorkSeries
      include CreativeWork
      include Series

      def self.schema_property_definitions
        {
          end_date: {
            schema_name: "endDate",
            schema_url: "https://schema.org/endDate",
            comment_lines: ["The end date and time of the item (in [ISO 8601 date format](http://en.wikipedia.org/wiki/ISO_8601))."].freeze,
            ranges: ["Date", "DateTime"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          issn: {
            schema_name: "issn",
            schema_url: "https://schema.org/issn",
            comment_lines: ["The International Standard Serial Number (ISSN) that identifies this serial publication. You can repeat this property to identify different formats of, or the linking ISSN (ISSN-L) for, this serial publication."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          start_date: {
            schema_name: "startDate",
            schema_url: "https://schema.org/startDate",
            comment_lines: ["The start date and time of the item (in [ISO 8601 date format](http://en.wikipedia.org/wiki/ISO_8601))."].freeze,
            ranges: ["Date", "DateTime"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The end date and time of the item (in [ISO 8601 date format](http://en.wikipedia.org/wiki/ISO_8601)).
      def end_date
        read_property(:end_date)
      end

      # The end date and time of the item (in [ISO 8601 date format](http://en.wikipedia.org/wiki/ISO_8601)).
      def end_date=(value)
        write_property(:end_date, value)
      end

      # The International Standard Serial Number (ISSN) that identifies this serial publication. You can repeat this property to identify different formats of, or the linking ISSN (ISSN-L) for, this serial publication.
      def issn
        read_property(:issn)
      end

      # The International Standard Serial Number (ISSN) that identifies this serial publication. You can repeat this property to identify different formats of, or the linking ISSN (ISSN-L) for, this serial publication.
      def issn=(value)
        write_property(:issn, value)
      end

      # The start date and time of the item (in [ISO 8601 date format](http://en.wikipedia.org/wiki/ISO_8601)).
      def start_date
        read_property(:start_date)
      end

      # The start date and time of the item (in [ISO 8601 date format](http://en.wikipedia.org/wiki/ISO_8601)).
      def start_date=(value)
        write_property(:start_date, value)
      end
    end
  end
end
