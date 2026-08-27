# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module AskAction
      include CommunicateAction

      def self.schema_property_definitions
        {
          question: {
            schema_name: "question",
            schema_url: "https://schema.org/question",
            comment_lines: ["A sub property of object. A question."].freeze,
            ranges: ["Question"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # A sub property of object. A question.
      def question
        read_property(:question)
      end

      # A sub property of object. A question.
      def question=(value)
        write_property(:question, value)
      end
    end
  end
end
