# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module LymphaticVessel
      include Vessel

      def self.schema_property_definitions
        {
          originates_from: {
            schema_name: "originatesFrom",
            schema_url: "https://schema.org/originatesFrom",
            comment_lines: ["The vasculature the lymphatic structure originates, or afferents, from."].freeze,
            ranges: ["Vessel"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          region_drained: {
            schema_name: "regionDrained",
            schema_url: "https://schema.org/regionDrained",
            comment_lines: ["The anatomical or organ system drained by this vessel; generally refers to a specific part of an organ."].freeze,
            ranges: ["AnatomicalStructure", "AnatomicalSystem"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          runs_to: {
            schema_name: "runsTo",
            schema_url: "https://schema.org/runsTo",
            comment_lines: ["The vasculature the lymphatic structure runs, or efferents, to."].freeze,
            ranges: ["Vessel"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The vasculature the lymphatic structure originates, or afferents, from.
      def originates_from
        read_property(:originates_from)
      end

      # The vasculature the lymphatic structure originates, or afferents, from.
      def originates_from=(value)
        write_property(:originates_from, value)
      end

      # The anatomical or organ system drained by this vessel; generally refers to a specific part of an organ.
      def region_drained
        read_property(:region_drained)
      end

      # The anatomical or organ system drained by this vessel; generally refers to a specific part of an organ.
      def region_drained=(value)
        write_property(:region_drained, value)
      end

      # The vasculature the lymphatic structure runs, or efferents, to.
      def runs_to
        read_property(:runs_to)
      end

      # The vasculature the lymphatic structure runs, or efferents, to.
      def runs_to=(value)
        write_property(:runs_to, value)
      end
    end
  end
end
