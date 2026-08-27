# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module Nerve
      include AnatomicalStructure

      def self.schema_property_definitions
        {
          branch: {
            schema_name: "branch",
            schema_url: "https://schema.org/branch",
            comment_lines: ["The branches that delineate from the nerve bundle. Not to be confused with [[branchOf]]."].freeze,
            ranges: ["AnatomicalStructure"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: "arterialBranch",
            supersedes: nil
          }.freeze,
          nerve_motor: {
            schema_name: "nerveMotor",
            schema_url: "https://schema.org/nerveMotor",
            comment_lines: ["The neurological pathway extension that involves muscle control."].freeze,
            ranges: ["Muscle"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          sensory_unit: {
            schema_name: "sensoryUnit",
            schema_url: "https://schema.org/sensoryUnit",
            comment_lines: ["The neurological pathway extension that inputs and sends information to the brain or spinal cord."].freeze,
            ranges: ["AnatomicalStructure", "SuperficialAnatomy"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          sourced_from: {
            schema_name: "sourcedFrom",
            schema_url: "https://schema.org/sourcedFrom",
            comment_lines: ["The neurological pathway that originates the neurons."].freeze,
            ranges: ["BrainStructure"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The branches that delineate from the nerve bundle. Not to be confused with [[branchOf]].
      # Superseded by `arterialBranch`.
      def branch
        read_property(:branch)
      end

      # The branches that delineate from the nerve bundle. Not to be confused with [[branchOf]].
      # Superseded by `arterialBranch`.
      def branch=(value)
        write_property(:branch, value)
      end

      # The neurological pathway extension that involves muscle control.
      def nerve_motor
        read_property(:nerve_motor)
      end

      # The neurological pathway extension that involves muscle control.
      def nerve_motor=(value)
        write_property(:nerve_motor, value)
      end

      # The neurological pathway extension that inputs and sends information to the brain or spinal cord.
      def sensory_unit
        read_property(:sensory_unit)
      end

      # The neurological pathway extension that inputs and sends information to the brain or spinal cord.
      def sensory_unit=(value)
        write_property(:sensory_unit, value)
      end

      # The neurological pathway that originates the neurons.
      def sourced_from
        read_property(:sourced_from)
      end

      # The neurological pathway that originates the neurons.
      def sourced_from=(value)
        write_property(:sourced_from, value)
      end
    end
  end
end
