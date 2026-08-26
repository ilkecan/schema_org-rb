# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module Vein
      include Vessel

      def self.schema_property_definitions
        {
          drains_to: {
            schema_name: "drainsTo",
            schema_url: "https://schema.org/drainsTo",
            comment_lines: ["The vasculature that the vein drains into."].freeze,
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
          tributary: {
            schema_name: "tributary",
            schema_url: "https://schema.org/tributary",
            comment_lines: ["The anatomical or organ system that the vein flows into; a larger structure that the vein connects to."].freeze,
            ranges: ["AnatomicalStructure"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The vasculature that the vein drains into.
      def drains_to
        read_property(:drains_to)
      end

      # The vasculature that the vein drains into.
      def drains_to=(value)
        write_property(:drains_to, value)
      end

      # The anatomical or organ system drained by this vessel; generally refers to a specific part of an organ.
      def region_drained
        read_property(:region_drained)
      end

      # The anatomical or organ system drained by this vessel; generally refers to a specific part of an organ.
      def region_drained=(value)
        write_property(:region_drained, value)
      end

      # The anatomical or organ system that the vein flows into; a larger structure that the vein connects to.
      def tributary
        read_property(:tributary)
      end

      # The anatomical or organ system that the vein flows into; a larger structure that the vein connects to.
      def tributary=(value)
        write_property(:tributary, value)
      end
    end
  end
end
