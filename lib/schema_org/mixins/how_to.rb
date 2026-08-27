# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module HowTo
      include CreativeWork

      def self.schema_property_definitions
        {
          estimated_cost: {
            schema_name: "estimatedCost",
            schema_url: "https://schema.org/estimatedCost",
            comment_lines: ["The estimated cost of the supply or supplies consumed when performing instructions."].freeze,
            ranges: ["MonetaryAmount", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          perform_time: {
            schema_name: "performTime",
            schema_url: "https://schema.org/performTime",
            comment_lines: ["The length of time it takes to perform instructions or a direction (not including time to prepare the supplies), in [ISO 8601 duration format](http://en.wikipedia.org/wiki/ISO_8601)."].freeze,
            ranges: ["Duration"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          prep_time: {
            schema_name: "prepTime",
            schema_url: "https://schema.org/prepTime",
            comment_lines: ["The length of time it takes to prepare the items to be used in instructions or a direction, in [ISO 8601 duration format](http://en.wikipedia.org/wiki/ISO_8601)."].freeze,
            ranges: ["Duration"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          step: {
            schema_name: "step",
            schema_url: "https://schema.org/step",
            comment_lines: ["A single step item (as HowToStep, text, document, video, etc.) or a HowToSection."].freeze,
            ranges: ["CreativeWork", "HowToSection", "HowToStep", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: "steps"
          }.freeze,
          steps: {
            schema_name: "steps",
            schema_url: "https://schema.org/steps",
            comment_lines: ["A single step item (as HowToStep, text, document, video, etc.) or a HowToSection (originally misnamed 'steps'; 'step' is preferred)."].freeze,
            ranges: ["CreativeWork", "ItemList", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: "step",
            supersedes: nil
          }.freeze,
          supply: {
            schema_name: "supply",
            schema_url: "https://schema.org/supply",
            comment_lines: ["A sub-property of instrument. A supply consumed when performing instructions or a direction."].freeze,
            ranges: ["HowToSupply", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          tool: {
            schema_name: "tool",
            schema_url: "https://schema.org/tool",
            comment_lines: ["A sub property of instrument. An object used (but not consumed) when performing instructions or a direction."].freeze,
            ranges: ["HowToTool", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          total_time: {
            schema_name: "totalTime",
            schema_url: "https://schema.org/totalTime",
            comment_lines: ["The total time required to perform instructions or a direction (including time to prepare the supplies), in [ISO 8601 duration format](http://en.wikipedia.org/wiki/ISO_8601)."].freeze,
            ranges: ["Duration"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          yield: {
            schema_name: "yield",
            schema_url: "https://schema.org/yield",
            comment_lines: ["The quantity that results by performing instructions. For example, a paper airplane, 10 personalized candles."].freeze,
            ranges: ["QuantitativeValue", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The estimated cost of the supply or supplies consumed when performing instructions.
      def estimated_cost
        read_property(:estimated_cost)
      end

      # The estimated cost of the supply or supplies consumed when performing instructions.
      def estimated_cost=(value)
        write_property(:estimated_cost, value)
      end

      # The length of time it takes to perform instructions or a direction (not including time to prepare the supplies), in [ISO 8601 duration format](http://en.wikipedia.org/wiki/ISO_8601).
      def perform_time
        read_property(:perform_time)
      end

      # The length of time it takes to perform instructions or a direction (not including time to prepare the supplies), in [ISO 8601 duration format](http://en.wikipedia.org/wiki/ISO_8601).
      def perform_time=(value)
        write_property(:perform_time, value)
      end

      # The length of time it takes to prepare the items to be used in instructions or a direction, in [ISO 8601 duration format](http://en.wikipedia.org/wiki/ISO_8601).
      def prep_time
        read_property(:prep_time)
      end

      # The length of time it takes to prepare the items to be used in instructions or a direction, in [ISO 8601 duration format](http://en.wikipedia.org/wiki/ISO_8601).
      def prep_time=(value)
        write_property(:prep_time, value)
      end

      # A single step item (as HowToStep, text, document, video, etc.) or a HowToSection.
      # Supersedes `steps`.
      def step
        read_property(:step)
      end

      # A single step item (as HowToStep, text, document, video, etc.) or a HowToSection.
      # Supersedes `steps`.
      def step=(value)
        write_property(:step, value)
      end

      # A single step item (as HowToStep, text, document, video, etc.) or a HowToSection (originally misnamed 'steps'; 'step' is preferred).
      # Superseded by `step`.
      def steps
        read_property(:steps)
      end

      # A single step item (as HowToStep, text, document, video, etc.) or a HowToSection (originally misnamed 'steps'; 'step' is preferred).
      # Superseded by `step`.
      def steps=(value)
        write_property(:steps, value)
      end

      # A sub-property of instrument. A supply consumed when performing instructions or a direction.
      def supply
        read_property(:supply)
      end

      # A sub-property of instrument. A supply consumed when performing instructions or a direction.
      def supply=(value)
        write_property(:supply, value)
      end

      # A sub property of instrument. An object used (but not consumed) when performing instructions or a direction.
      def tool
        read_property(:tool)
      end

      # A sub property of instrument. An object used (but not consumed) when performing instructions or a direction.
      def tool=(value)
        write_property(:tool, value)
      end

      # The total time required to perform instructions or a direction (including time to prepare the supplies), in [ISO 8601 duration format](http://en.wikipedia.org/wiki/ISO_8601).
      def total_time
        read_property(:total_time)
      end

      # The total time required to perform instructions or a direction (including time to prepare the supplies), in [ISO 8601 duration format](http://en.wikipedia.org/wiki/ISO_8601).
      def total_time=(value)
        write_property(:total_time, value)
      end

      # The quantity that results by performing instructions. For example, a paper airplane, 10 personalized candles.
      def yield
        read_property(:yield)
      end

      # The quantity that results by performing instructions. For example, a paper airplane, 10 personalized candles.
      def yield=(value)
        write_property(:yield, value)
      end
    end
  end
end
