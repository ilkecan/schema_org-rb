# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module DataFeedItem
      include Intangible

      def self.schema_property_definitions
        {
          date_created: {
            schema_name: "dateCreated",
            schema_url: "https://schema.org/dateCreated",
            comment_lines: ["The date on which the CreativeWork was created or the item was added to a DataFeed."].freeze,
            ranges: ["Date", "DateTime"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          date_deleted: {
            schema_name: "dateDeleted",
            schema_url: "https://schema.org/dateDeleted",
            comment_lines: ["The datetime the item was removed from the DataFeed."].freeze,
            ranges: ["Date", "DateTime"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          date_modified: {
            schema_name: "dateModified",
            schema_url: "https://schema.org/dateModified",
            comment_lines: ["The date on which the CreativeWork was most recently modified or when the item's entry was modified within a DataFeed."].freeze,
            ranges: ["Date", "DateTime"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          item: {
            schema_name: "item",
            schema_url: "https://schema.org/item",
            comment_lines: ["An entity represented by an entry in a list or data feed (e.g. an 'artist' in a list of 'artists')."].freeze,
            ranges: ["Thing"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The date on which the CreativeWork was created or the item was added to a DataFeed.
      def date_created
        read_property(:date_created)
      end

      # The date on which the CreativeWork was created or the item was added to a DataFeed.
      def date_created=(value)
        write_property(:date_created, value)
      end

      # The datetime the item was removed from the DataFeed.
      def date_deleted
        read_property(:date_deleted)
      end

      # The datetime the item was removed from the DataFeed.
      def date_deleted=(value)
        write_property(:date_deleted, value)
      end

      # The date on which the CreativeWork was most recently modified or when the item's entry was modified within a DataFeed.
      def date_modified
        read_property(:date_modified)
      end

      # The date on which the CreativeWork was most recently modified or when the item's entry was modified within a DataFeed.
      def date_modified=(value)
        write_property(:date_modified, value)
      end

      # An entity represented by an entry in a list or data feed (e.g. an 'artist' in a list of 'artists').
      def item
        read_property(:item)
      end

      # An entity represented by an entry in a list or data feed (e.g. an 'artist' in a list of 'artists').
      def item=(value)
        write_property(:item, value)
      end
    end
  end
end
