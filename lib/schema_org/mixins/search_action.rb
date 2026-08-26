# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module SearchAction
      include Action

      def self.schema_property_definitions
        {
          query: {
            schema_name: "query",
            schema_url: "https://schema.org/query",
            comment_lines: ["A sub property of instrument. The query used on this action."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # A sub property of instrument. The query used on this action.
      def query
        read_property(:query)
      end

      # A sub property of instrument. The query used on this action.
      def query=(value)
        write_property(:query, value)
      end
    end
  end
end
