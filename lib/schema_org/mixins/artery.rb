# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module Artery
      include Vessel

      def self.schema_property_definitions
        {
          arterial_branch: {
            schema_name: "arterialBranch",
            schema_url: "https://schema.org/arterialBranch",
            comment_lines: ["The branches that comprise the arterial structure."].freeze,
            ranges: ["AnatomicalStructure"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: "branch"
          }.freeze,
          supply_to: {
            schema_name: "supplyTo",
            schema_url: "https://schema.org/supplyTo",
            comment_lines: ["The area to which the artery supplies blood."].freeze,
            ranges: ["AnatomicalStructure"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The branches that comprise the arterial structure.
      # Supersedes `branch`.
      def arterial_branch
        read_property(:arterial_branch)
      end

      # The branches that comprise the arterial structure.
      # Supersedes `branch`.
      def arterial_branch=(value)
        write_property(:arterial_branch, value)
      end

      # The area to which the artery supplies blood.
      def supply_to
        read_property(:supply_to)
      end

      # The area to which the artery supplies blood.
      def supply_to=(value)
        write_property(:supply_to, value)
      end
    end
  end
end
