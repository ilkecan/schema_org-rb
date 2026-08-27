# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module HyperToc
      include CreativeWork

      def self.schema_property_definitions
        {
          associated_media: {
            schema_name: "associatedMedia",
            schema_url: "https://schema.org/associatedMedia",
            comment_lines: ["A media object that encodes this CreativeWork. This property is a synonym for encoding."].freeze,
            ranges: ["MediaObject"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          toc_entry: {
            schema_name: "tocEntry",
            schema_url: "https://schema.org/tocEntry",
            comment_lines: ["Indicates a [[HyperTocEntry]] in a [[HyperToc]]."].freeze,
            ranges: ["HyperTocEntry"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # A media object that encodes this CreativeWork. This property is a synonym for encoding.
      def associated_media
        read_property(:associated_media)
      end

      # A media object that encodes this CreativeWork. This property is a synonym for encoding.
      def associated_media=(value)
        write_property(:associated_media, value)
      end

      # Indicates a [[HyperTocEntry]] in a [[HyperToc]].
      def toc_entry
        read_property(:toc_entry)
      end

      # Indicates a [[HyperTocEntry]] in a [[HyperToc]].
      def toc_entry=(value)
        write_property(:toc_entry, value)
      end
    end
  end
end
