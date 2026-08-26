# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module HowToDirection
      include CreativeWork
      include ListItem

      def self.schema_property_definitions
        {
          after_media: {
            schema_name: "afterMedia",
            schema_url: "https://schema.org/afterMedia",
            comment_lines: ["A media object representing the circumstances after performing this direction."].freeze,
            ranges: ["MediaObject", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          before_media: {
            schema_name: "beforeMedia",
            schema_url: "https://schema.org/beforeMedia",
            comment_lines: ["A media object representing the circumstances before performing this direction."].freeze,
            ranges: ["MediaObject", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          during_media: {
            schema_name: "duringMedia",
            schema_url: "https://schema.org/duringMedia",
            comment_lines: ["A media object representing the circumstances while performing this direction."].freeze,
            ranges: ["MediaObject", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          perform_time: {
            schema_name: "performTime",
            schema_url: "https://schema.org/performTime",
            comment_lines: ["The length of time it takes to perform instructions or a direction (not including time to prepare the supplies), in [ISO 8601 duration format](http://en.wikipedia.org/wiki/ISO_8601)."].freeze,
            ranges: ["Duration"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          prep_time: {
            schema_name: "prepTime",
            schema_url: "https://schema.org/prepTime",
            comment_lines: ["The length of time it takes to prepare the items to be used in instructions or a direction, in [ISO 8601 duration format](http://en.wikipedia.org/wiki/ISO_8601)."].freeze,
            ranges: ["Duration"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          supply: {
            schema_name: "supply",
            schema_url: "https://schema.org/supply",
            comment_lines: ["A sub-property of instrument. A supply consumed when performing instructions or a direction."].freeze,
            ranges: ["HowToSupply", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          tool: {
            schema_name: "tool",
            schema_url: "https://schema.org/tool",
            comment_lines: ["A sub property of instrument. An object used (but not consumed) when performing instructions or a direction."].freeze,
            ranges: ["HowToTool", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          total_time: {
            schema_name: "totalTime",
            schema_url: "https://schema.org/totalTime",
            comment_lines: ["The total time required to perform instructions or a direction (including time to prepare the supplies), in [ISO 8601 duration format](http://en.wikipedia.org/wiki/ISO_8601)."].freeze,
            ranges: ["Duration"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # A media object representing the circumstances after performing this direction.
      def after_media
        read_property(:after_media)
      end

      # A media object representing the circumstances after performing this direction.
      def after_media=(value)
        write_property(:after_media, value)
      end

      # A media object representing the circumstances before performing this direction.
      def before_media
        read_property(:before_media)
      end

      # A media object representing the circumstances before performing this direction.
      def before_media=(value)
        write_property(:before_media, value)
      end

      # A media object representing the circumstances while performing this direction.
      def during_media
        read_property(:during_media)
      end

      # A media object representing the circumstances while performing this direction.
      def during_media=(value)
        write_property(:during_media, value)
      end

      # The length of time it takes to perform instructions or a direction (not including time to prepare the supplies), in [ISO 8601 duration format](http://en.wikipedia.org/wiki/ISO_8601).
      def perform_time
        read_property(:perform_time)
      end

      # The length of time it takes to perform instructions or a direction (not including time to prepare the supplies), in [ISO 8601 duration format](http://en.wikipedia.org/wiki/ISO_8601).
      def perform_time=(value)
        write_property(:perform_time, value)
      end

      # The length of time it takes to prepare the items to be used in instructions or a direction, in [ISO 8601 duration format](http://en.wikipedia.org/wiki/ISO_8601).
      def prep_time
        read_property(:prep_time)
      end

      # The length of time it takes to prepare the items to be used in instructions or a direction, in [ISO 8601 duration format](http://en.wikipedia.org/wiki/ISO_8601).
      def prep_time=(value)
        write_property(:prep_time, value)
      end

      # A sub-property of instrument. A supply consumed when performing instructions or a direction.
      def supply
        read_property(:supply)
      end

      # A sub-property of instrument. A supply consumed when performing instructions or a direction.
      def supply=(value)
        write_property(:supply, value)
      end

      # A sub property of instrument. An object used (but not consumed) when performing instructions or a direction.
      def tool
        read_property(:tool)
      end

      # A sub property of instrument. An object used (but not consumed) when performing instructions or a direction.
      def tool=(value)
        write_property(:tool, value)
      end

      # The total time required to perform instructions or a direction (including time to prepare the supplies), in [ISO 8601 duration format](http://en.wikipedia.org/wiki/ISO_8601).
      def total_time
        read_property(:total_time)
      end

      # The total time required to perform instructions or a direction (including time to prepare the supplies), in [ISO 8601 duration format](http://en.wikipedia.org/wiki/ISO_8601).
      def total_time=(value)
        write_property(:total_time, value)
      end
    end
  end
end
