# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module CategoryCodeSet
      include DefinedTermSet

      def self.schema_property_definitions
        {
          has_category_code: {
            schema_name: "hasCategoryCode",
            schema_url: "https://schema.org/hasCategoryCode",
            comment_lines: ["A Category code contained in this code set."].freeze,
            ranges: ["CategoryCode"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # A Category code contained in this code set.
      def has_category_code
        read_property(:has_category_code)
      end

      # A Category code contained in this code set.
      def has_category_code=(value)
        write_property(:has_category_code, value)
      end
    end
  end
end
