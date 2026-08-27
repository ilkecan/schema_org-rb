# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module ReplyAction
      include CommunicateAction

      def self.schema_property_definitions
        {
          result_comment: {
            schema_name: "resultComment",
            schema_url: "https://schema.org/resultComment",
            comment_lines: ["A sub property of result. The Comment created or sent as a result of this action."].freeze,
            ranges: ["Comment"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # A sub property of result. The Comment created or sent as a result of this action.
      def result_comment
        read_property(:result_comment)
      end

      # A sub property of result. The Comment created or sent as a result of this action.
      def result_comment=(value)
        write_property(:result_comment, value)
      end
    end
  end
end
