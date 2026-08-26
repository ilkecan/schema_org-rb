# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module StupidType
      include Thing

      def self.schema_property_definitions
        {
          stupid_property: {
            schema_name: "stupidProperty",
            schema_url: "https://schema.org/stupidProperty",
            comment_lines: ["This is a StupidProperty! - for testing only."].freeze,
            ranges: ["QuantitativeValue"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # This is a StupidProperty! - for testing only.
      def stupid_property
        read_property(:stupid_property)
      end

      # This is a StupidProperty! - for testing only.
      def stupid_property=(value)
        write_property(:stupid_property, value)
      end
    end
  end
end
