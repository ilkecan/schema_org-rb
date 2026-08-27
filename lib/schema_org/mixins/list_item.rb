# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module ListItem
      include Intangible

      def self.schema_property_definitions
        {
          item: {
            schema_name: "item",
            schema_url: "https://schema.org/item",
            comment_lines: ["An entity represented by an entry in a list or data feed (e.g. an 'artist' in a list of 'artists')."].freeze,
            ranges: ["Thing"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          next_item: {
            schema_name: "nextItem",
            schema_url: "https://schema.org/nextItem",
            comment_lines: ["A link to the ListItem that follows the current one."].freeze,
            ranges: ["ListItem"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          position: {
            schema_name: "position",
            schema_url: "https://schema.org/position",
            comment_lines: ["The position of an item in a series or sequence of items."].freeze,
            ranges: ["Integer", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          previous_item: {
            schema_name: "previousItem",
            schema_url: "https://schema.org/previousItem",
            comment_lines: ["A link to the ListItem that precedes the current one."].freeze,
            ranges: ["ListItem"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # An entity represented by an entry in a list or data feed (e.g. an 'artist' in a list of 'artists').
      def item
        read_property(:item)
      end

      # An entity represented by an entry in a list or data feed (e.g. an 'artist' in a list of 'artists').
      def item=(value)
        write_property(:item, value)
      end

      # A link to the ListItem that follows the current one.
      def next_item
        read_property(:next_item)
      end

      # A link to the ListItem that follows the current one.
      def next_item=(value)
        write_property(:next_item, value)
      end

      # The position of an item in a series or sequence of items.
      def position
        read_property(:position)
      end

      # The position of an item in a series or sequence of items.
      def position=(value)
        write_property(:position, value)
      end

      # A link to the ListItem that precedes the current one.
      def previous_item
        read_property(:previous_item)
      end

      # A link to the ListItem that precedes the current one.
      def previous_item=(value)
        write_property(:previous_item, value)
      end
    end
  end
end
