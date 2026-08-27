# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module VoteAction
      include ChooseAction

      def self.schema_property_definitions
        {
          candidate: {
            schema_name: "candidate",
            schema_url: "https://schema.org/candidate",
            comment_lines: ["A sub property of object. The candidate subject of this action."].freeze,
            ranges: ["Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # A sub property of object. The candidate subject of this action.
      def candidate
        read_property(:candidate)
      end

      # A sub property of object. The candidate subject of this action.
      def candidate=(value)
        write_property(:candidate, value)
      end
    end
  end
end
