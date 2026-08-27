# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module WebAPI
      include Service

      def self.schema_property_definitions
        {
          documentation: {
            schema_name: "documentation",
            schema_url: "https://schema.org/documentation",
            comment_lines: ["Further documentation describing the Web API in more detail."].freeze,
            ranges: ["CreativeWork", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # Further documentation describing the Web API in more detail.
      def documentation
        read_property(:documentation)
      end

      # Further documentation describing the Web API in more detail.
      def documentation=(value)
        write_property(:documentation, value)
      end
    end
  end
end
