# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module MedicalConditionStage
      include MedicalIntangible

      def self.schema_property_definitions
        {
          stage_as_number: {
            schema_name: "stageAsNumber",
            schema_url: "https://schema.org/stageAsNumber",
            comment_lines: ["The stage represented as a number, e.g. 3."].freeze,
            ranges: ["Number"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          sub_stage_suffix: {
            schema_name: "subStageSuffix",
            schema_url: "https://schema.org/subStageSuffix",
            comment_lines: ["The substage, e.g. 'a' for Stage IIIa."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The stage represented as a number, e.g. 3.
      def stage_as_number
        read_property(:stage_as_number)
      end

      # The stage represented as a number, e.g. 3.
      def stage_as_number=(value)
        write_property(:stage_as_number, value)
      end

      # The substage, e.g. 'a' for Stage IIIa.
      def sub_stage_suffix
        read_property(:sub_stage_suffix)
      end

      # The substage, e.g. 'a' for Stage IIIa.
      def sub_stage_suffix=(value)
        write_property(:sub_stage_suffix, value)
      end
    end
  end
end
