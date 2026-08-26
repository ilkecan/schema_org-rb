# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module Answer
      include Comment

      def self.schema_property_definitions
        {
          answer_explanation: {
            schema_name: "answerExplanation",
            schema_url: "https://schema.org/answerExplanation",
            comment_lines: ["A step-by-step or full explanation about Answer. Can outline how this Answer was achieved or contain more broad clarification or statement about it."].freeze,
            ranges: ["Comment", "WebContent"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          parent_item: {
            schema_name: "parentItem",
            schema_url: "https://schema.org/parentItem",
            comment_lines: ["The parent of a question, answer or item in general. Typically used for Q/A discussion threads e.g. a chain of comments with the first comment being an [[Article]] or other [[CreativeWork]]. See also [[comment]] which points from something to a comment about it."].freeze,
            ranges: ["Comment", "CreativeWork"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # A step-by-step or full explanation about Answer. Can outline how this Answer was achieved or contain more broad clarification or statement about it.
      def answer_explanation
        read_property(:answer_explanation)
      end

      # A step-by-step or full explanation about Answer. Can outline how this Answer was achieved or contain more broad clarification or statement about it.
      def answer_explanation=(value)
        write_property(:answer_explanation, value)
      end

      # The parent of a question, answer or item in general. Typically used for Q/A discussion threads e.g. a chain of comments with the first comment being an [[Article]] or other [[CreativeWork]]. See also [[comment]] which points from something to a comment about it.
      def parent_item
        read_property(:parent_item)
      end

      # The parent of a question, answer or item in general. Typically used for Q/A discussion threads e.g. a chain of comments with the first comment being an [[Article]] or other [[CreativeWork]]. See also [[comment]] which points from something to a comment about it.
      def parent_item=(value)
        write_property(:parent_item, value)
      end
    end
  end
end
