# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module HyperTocEntry
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
          toc_continuation: {
            schema_name: "tocContinuation",
            schema_url: "https://schema.org/tocContinuation",
            comment_lines: ["A [[HyperTocEntry]] can have a [[tocContinuation]] indicated, which is another [[HyperTocEntry]] that would be the default next item to play or render."].freeze,
            ranges: ["HyperTocEntry"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          utterances: {
            schema_name: "utterances",
            schema_url: "https://schema.org/utterances",
            comment_lines: ["Text of an utterances (spoken words, lyrics etc.) that occurs at a certain section of a media object, represented as a [[HyperTocEntry]]."].freeze,
            ranges: ["Text"].freeze,
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

      # A [[HyperTocEntry]] can have a [[tocContinuation]] indicated, which is another [[HyperTocEntry]] that would be the default next item to play or render.
      def toc_continuation
        read_property(:toc_continuation)
      end

      # A [[HyperTocEntry]] can have a [[tocContinuation]] indicated, which is another [[HyperTocEntry]] that would be the default next item to play or render.
      def toc_continuation=(value)
        write_property(:toc_continuation, value)
      end

      # Text of an utterances (spoken words, lyrics etc.) that occurs at a certain section of a media object, represented as a [[HyperTocEntry]].
      def utterances
        read_property(:utterances)
      end

      # Text of an utterances (spoken words, lyrics etc.) that occurs at a certain section of a media object, represented as a [[HyperTocEntry]].
      def utterances=(value)
        write_property(:utterances, value)
      end
    end
  end
end
