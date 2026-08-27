# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module Muscle
      include AnatomicalStructure

      def self.schema_property_definitions
        {
          antagonist: {
            schema_name: "antagonist",
            schema_url: "https://schema.org/antagonist",
            comment_lines: ["The muscle whose action counteracts the specified muscle."].freeze,
            ranges: ["Muscle"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          blood_supply: {
            schema_name: "bloodSupply",
            schema_url: "https://schema.org/bloodSupply",
            comment_lines: ["The blood vessel that carries blood from the heart to the muscle."].freeze,
            ranges: ["Vessel"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          insertion: {
            schema_name: "insertion",
            schema_url: "https://schema.org/insertion",
            comment_lines: ["The place of attachment of a muscle, or what the muscle moves."].freeze,
            ranges: ["AnatomicalStructure"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          muscle_action: {
            schema_name: "muscleAction",
            schema_url: "https://schema.org/muscleAction",
            comment_lines: ["The movement the muscle generates."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          nerve: {
            schema_name: "nerve",
            schema_url: "https://schema.org/nerve",
            comment_lines: ["The underlying innervation associated with the muscle."].freeze,
            ranges: ["Nerve"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The muscle whose action counteracts the specified muscle.
      def antagonist
        read_property(:antagonist)
      end

      # The muscle whose action counteracts the specified muscle.
      def antagonist=(value)
        write_property(:antagonist, value)
      end

      # The blood vessel that carries blood from the heart to the muscle.
      def blood_supply
        read_property(:blood_supply)
      end

      # The blood vessel that carries blood from the heart to the muscle.
      def blood_supply=(value)
        write_property(:blood_supply, value)
      end

      # The place of attachment of a muscle, or what the muscle moves.
      def insertion
        read_property(:insertion)
      end

      # The place of attachment of a muscle, or what the muscle moves.
      def insertion=(value)
        write_property(:insertion, value)
      end

      # The movement the muscle generates.
      def muscle_action
        read_property(:muscle_action)
      end

      # The movement the muscle generates.
      def muscle_action=(value)
        write_property(:muscle_action, value)
      end

      # The underlying innervation associated with the muscle.
      def nerve
        read_property(:nerve)
      end

      # The underlying innervation associated with the muscle.
      def nerve=(value)
        write_property(:nerve, value)
      end
    end
  end
end
