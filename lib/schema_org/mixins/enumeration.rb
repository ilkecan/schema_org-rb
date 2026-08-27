# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module Enumeration
      include Intangible

      def self.schema_property_definitions
        {
          superseded_by: {
            schema_name: "supersededBy",
            schema_url: "https://schema.org/supersededBy",
            comment_lines: ["Relates a term (i.e. a property, class or enumeration) to one that supersedes it."].freeze,
            ranges: ["Enumeration"].freeze,
            external_ranges: ["Class", "Property"].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # Relates a term (i.e. a property, class or enumeration) to one that supersedes it.
      def superseded_by
        read_property(:superseded_by)
      end

      # Relates a term (i.e. a property, class or enumeration) to one that supersedes it.
      def superseded_by=(value)
        write_property(:superseded_by, value)
      end
    end
  end
end
