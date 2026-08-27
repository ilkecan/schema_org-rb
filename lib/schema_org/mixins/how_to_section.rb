# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module HowToSection
      include CreativeWork
      include ItemList
      include ListItem

      def self.schema_property_definitions
        {
          steps: {
            schema_name: "steps",
            schema_url: "https://schema.org/steps",
            comment_lines: ["A single step item (as HowToStep, text, document, video, etc.) or a HowToSection (originally misnamed 'steps'; 'step' is preferred)."].freeze,
            ranges: ["CreativeWork", "ItemList", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: "step",
            supersedes: nil
          }.freeze
        }.freeze
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
    end
  end
end
