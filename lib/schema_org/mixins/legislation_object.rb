# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module LegislationObject
      include Legislation
      include MediaObject

      def self.schema_property_definitions
        {
          legislation_legal_value: {
            schema_name: "legislationLegalValue",
            schema_url: "https://schema.org/legislationLegalValue",
            comment_lines: ["The legal value of this legislation file. The same legislation can be written in multiple files with different legal values. Typically a digitally signed PDF have a \"stronger\" legal value than the HTML file of the same act."].freeze,
            ranges: ["LegalValueLevel"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The legal value of this legislation file. The same legislation can be written in multiple files with different legal values. Typically a digitally signed PDF have a "stronger" legal value than the HTML file of the same act.
      def legislation_legal_value
        read_property(:legislation_legal_value)
      end

      # The legal value of this legislation file. The same legislation can be written in multiple files with different legal values. Typically a digitally signed PDF have a "stronger" legal value than the HTML file of the same act.
      def legislation_legal_value=(value)
        write_property(:legislation_legal_value, value)
      end
    end
  end
end
