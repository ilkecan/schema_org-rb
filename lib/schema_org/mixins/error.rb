# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module Error
      include InstantaneousEvent

      def self.schema_property_definitions
        {
          error_code: {
            schema_name: "errorCode",
            schema_url: "https://schema.org/errorCode",
            comment_lines: ["Application or platform dependant error code."].freeze,
            ranges: ["DefinedTerm", "Integer", "StatusEnumeration", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # Application or platform dependant error code.
      def error_code
        read_property(:error_code)
      end

      # Application or platform dependant error code.
      def error_code=(value)
        write_property(:error_code, value)
      end
    end
  end
end
