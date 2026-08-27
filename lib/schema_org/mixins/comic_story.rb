# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module ComicStory
      include CreativeWork

      def self.schema_property_definitions
        {
          artist: {
            schema_name: "artist",
            schema_url: "https://schema.org/artist",
            comment_lines: ["The primary artist for a work", "    \tin a medium other than pencils or digital line art--for example, if the", "    \tprimary artwork is done in watercolors or digital paints."].freeze,
            ranges: ["Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          colorist: {
            schema_name: "colorist",
            schema_url: "https://schema.org/colorist",
            comment_lines: ["The individual who adds color to inked drawings."].freeze,
            ranges: ["Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          inker: {
            schema_name: "inker",
            schema_url: "https://schema.org/inker",
            comment_lines: ["The individual who traces over the pencil drawings in ink after pencils are complete."].freeze,
            ranges: ["Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          letterer: {
            schema_name: "letterer",
            schema_url: "https://schema.org/letterer",
            comment_lines: ["The individual who adds lettering, including speech balloons and sound effects, to artwork."].freeze,
            ranges: ["Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          penciler: {
            schema_name: "penciler",
            schema_url: "https://schema.org/penciler",
            comment_lines: ["The individual who draws the primary narrative artwork."].freeze,
            ranges: ["Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The primary artist for a work
      #     	in a medium other than pencils or digital line art--for example, if the
      #     	primary artwork is done in watercolors or digital paints.
      def artist
        read_property(:artist)
      end

      # The primary artist for a work
      #     	in a medium other than pencils or digital line art--for example, if the
      #     	primary artwork is done in watercolors or digital paints.
      def artist=(value)
        write_property(:artist, value)
      end

      # The individual who adds color to inked drawings.
      def colorist
        read_property(:colorist)
      end

      # The individual who adds color to inked drawings.
      def colorist=(value)
        write_property(:colorist, value)
      end

      # The individual who traces over the pencil drawings in ink after pencils are complete.
      def inker
        read_property(:inker)
      end

      # The individual who traces over the pencil drawings in ink after pencils are complete.
      def inker=(value)
        write_property(:inker, value)
      end

      # The individual who adds lettering, including speech balloons and sound effects, to artwork.
      def letterer
        read_property(:letterer)
      end

      # The individual who adds lettering, including speech balloons and sound effects, to artwork.
      def letterer=(value)
        write_property(:letterer, value)
      end

      # The individual who draws the primary narrative artwork.
      def penciler
        read_property(:penciler)
      end

      # The individual who draws the primary narrative artwork.
      def penciler=(value)
        write_property(:penciler, value)
      end
    end
  end
end
