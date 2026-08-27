# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module NewsArticle
      include Article

      def self.schema_property_definitions
        {
          dateline: {
            schema_name: "dateline",
            schema_url: "https://schema.org/dateline",
            comment_lines: ["A [dateline](https://en.wikipedia.org/wiki/Dateline) is a brief piece of text included in news articles that describes where and when the story was written or filed though the date is often omitted. Sometimes only a placename is provided.", "", "Structured representations of dateline-related information can also be expressed more explicitly using [[locationCreated]] (which represents where a work was created, e.g. where a news report was written).  For location depicted or described in the content, use [[contentLocation]].", "", "Dateline summaries are oriented more towards human readers than towards automated processing, and can vary substantially. Some examples: \"BEIRUT, Lebanon, June 2.\", \"Paris, France\", \"December 19, 2017 11:43AM Reporting from Washington\", \"Beijing/Moscow\", \"QUEZON CITY, Philippines\"."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          print_column: {
            schema_name: "printColumn",
            schema_url: "https://schema.org/printColumn",
            comment_lines: ["The number of the column in which the NewsArticle appears in the print edition."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          print_edition: {
            schema_name: "printEdition",
            schema_url: "https://schema.org/printEdition",
            comment_lines: ["The edition of the print product in which the NewsArticle appears."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          print_page: {
            schema_name: "printPage",
            schema_url: "https://schema.org/printPage",
            comment_lines: ["If this NewsArticle appears in print, this field indicates the name of the page on which the article is found. Please note that this field is intended for the exact page name (e.g. A5, B18)."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          print_section: {
            schema_name: "printSection",
            schema_url: "https://schema.org/printSection",
            comment_lines: ["If this NewsArticle appears in print, this field indicates the print section in which the article appeared."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # A [dateline](https://en.wikipedia.org/wiki/Dateline) is a brief piece of text included in news articles that describes where and when the story was written or filed though the date is often omitted. Sometimes only a placename is provided.
      #
      # Structured representations of dateline-related information can also be expressed more explicitly using [[locationCreated]] (which represents where a work was created, e.g. where a news report was written).  For location depicted or described in the content, use [[contentLocation]].
      #
      # Dateline summaries are oriented more towards human readers than towards automated processing, and can vary substantially. Some examples: "BEIRUT, Lebanon, June 2.", "Paris, France", "December 19, 2017 11:43AM Reporting from Washington", "Beijing/Moscow", "QUEZON CITY, Philippines".
      def dateline
        read_property(:dateline)
      end

      # A [dateline](https://en.wikipedia.org/wiki/Dateline) is a brief piece of text included in news articles that describes where and when the story was written or filed though the date is often omitted. Sometimes only a placename is provided.
      #
      # Structured representations of dateline-related information can also be expressed more explicitly using [[locationCreated]] (which represents where a work was created, e.g. where a news report was written).  For location depicted or described in the content, use [[contentLocation]].
      #
      # Dateline summaries are oriented more towards human readers than towards automated processing, and can vary substantially. Some examples: "BEIRUT, Lebanon, June 2.", "Paris, France", "December 19, 2017 11:43AM Reporting from Washington", "Beijing/Moscow", "QUEZON CITY, Philippines".
      def dateline=(value)
        write_property(:dateline, value)
      end

      # The number of the column in which the NewsArticle appears in the print edition.
      def print_column
        read_property(:print_column)
      end

      # The number of the column in which the NewsArticle appears in the print edition.
      def print_column=(value)
        write_property(:print_column, value)
      end

      # The edition of the print product in which the NewsArticle appears.
      def print_edition
        read_property(:print_edition)
      end

      # The edition of the print product in which the NewsArticle appears.
      def print_edition=(value)
        write_property(:print_edition, value)
      end

      # If this NewsArticle appears in print, this field indicates the name of the page on which the article is found. Please note that this field is intended for the exact page name (e.g. A5, B18).
      def print_page
        read_property(:print_page)
      end

      # If this NewsArticle appears in print, this field indicates the name of the page on which the article is found. Please note that this field is intended for the exact page name (e.g. A5, B18).
      def print_page=(value)
        write_property(:print_page, value)
      end

      # If this NewsArticle appears in print, this field indicates the print section in which the article appeared.
      def print_section
        read_property(:print_section)
      end

      # If this NewsArticle appears in print, this field indicates the print section in which the article appeared.
      def print_section=(value)
        write_property(:print_section, value)
      end
    end
  end
end
