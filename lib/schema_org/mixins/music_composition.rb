# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module MusicComposition
      include CreativeWork

      def self.schema_property_definitions
        {
          composer: {
            schema_name: "composer",
            schema_url: "https://schema.org/composer",
            comment_lines: ["The person or organization who wrote a composition, or who is the composer of a work performed at some event."].freeze,
            ranges: ["Organization", "Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          first_performance: {
            schema_name: "firstPerformance",
            schema_url: "https://schema.org/firstPerformance",
            comment_lines: ["The date and place the work was first performed."].freeze,
            ranges: ["Event"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          included_composition: {
            schema_name: "includedComposition",
            schema_url: "https://schema.org/includedComposition",
            comment_lines: ["Smaller compositions included in this work (e.g. a movement in a symphony)."].freeze,
            ranges: ["MusicComposition"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          iswc_code: {
            schema_name: "iswcCode",
            schema_url: "https://schema.org/iswcCode",
            comment_lines: ["The International Standard Musical Work Code for the composition."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          lyricist: {
            schema_name: "lyricist",
            schema_url: "https://schema.org/lyricist",
            comment_lines: ["The person who wrote the words."].freeze,
            ranges: ["Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          lyrics: {
            schema_name: "lyrics",
            schema_url: "https://schema.org/lyrics",
            comment_lines: ["The words in the song."].freeze,
            ranges: ["CreativeWork"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          music_arrangement: {
            schema_name: "musicArrangement",
            schema_url: "https://schema.org/musicArrangement",
            comment_lines: ["An arrangement derived from the composition."].freeze,
            ranges: ["MusicComposition"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          music_composition_form: {
            schema_name: "musicCompositionForm",
            schema_url: "https://schema.org/musicCompositionForm",
            comment_lines: ["The type of composition (e.g. overture, sonata, symphony, etc.)."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          musical_key: {
            schema_name: "musicalKey",
            schema_url: "https://schema.org/musicalKey",
            comment_lines: ["The key, mode, or scale this composition uses."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          recorded_as: {
            schema_name: "recordedAs",
            schema_url: "https://schema.org/recordedAs",
            comment_lines: ["An audio recording of the work."].freeze,
            ranges: ["MusicRecording"].freeze,
            external_ranges: [].freeze,
            inverse_of: "recordingOf",
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The person or organization who wrote a composition, or who is the composer of a work performed at some event.
      def composer
        read_property(:composer)
      end

      # The person or organization who wrote a composition, or who is the composer of a work performed at some event.
      def composer=(value)
        write_property(:composer, value)
      end

      # The date and place the work was first performed.
      def first_performance
        read_property(:first_performance)
      end

      # The date and place the work was first performed.
      def first_performance=(value)
        write_property(:first_performance, value)
      end

      # Smaller compositions included in this work (e.g. a movement in a symphony).
      def included_composition
        read_property(:included_composition)
      end

      # Smaller compositions included in this work (e.g. a movement in a symphony).
      def included_composition=(value)
        write_property(:included_composition, value)
      end

      # The International Standard Musical Work Code for the composition.
      def iswc_code
        read_property(:iswc_code)
      end

      # The International Standard Musical Work Code for the composition.
      def iswc_code=(value)
        write_property(:iswc_code, value)
      end

      # The person who wrote the words.
      def lyricist
        read_property(:lyricist)
      end

      # The person who wrote the words.
      def lyricist=(value)
        write_property(:lyricist, value)
      end

      # The words in the song.
      def lyrics
        read_property(:lyrics)
      end

      # The words in the song.
      def lyrics=(value)
        write_property(:lyrics, value)
      end

      # An arrangement derived from the composition.
      def music_arrangement
        read_property(:music_arrangement)
      end

      # An arrangement derived from the composition.
      def music_arrangement=(value)
        write_property(:music_arrangement, value)
      end

      # The type of composition (e.g. overture, sonata, symphony, etc.).
      def music_composition_form
        read_property(:music_composition_form)
      end

      # The type of composition (e.g. overture, sonata, symphony, etc.).
      def music_composition_form=(value)
        write_property(:music_composition_form, value)
      end

      # The key, mode, or scale this composition uses.
      def musical_key
        read_property(:musical_key)
      end

      # The key, mode, or scale this composition uses.
      def musical_key=(value)
        write_property(:musical_key, value)
      end

      # An audio recording of the work.
      # Inverse-property: `recordingOf`.
      def recorded_as
        read_property(:recorded_as)
      end

      # An audio recording of the work.
      # Inverse-property: `recordingOf`.
      def recorded_as=(value)
        write_property(:recorded_as, value)
      end
    end
  end
end
