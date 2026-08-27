# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module Question
      include Comment

      def self.schema_property_definitions
        {
          accepted_answer: {
            schema_name: "acceptedAnswer",
            schema_url: "https://schema.org/acceptedAnswer",
            comment_lines: ["The answer(s) that has been accepted as best, typically on a Question/Answer site. Sites vary in their selection mechanisms, e.g. drawing on community opinion and/or the view of the Question author."].freeze,
            ranges: ["Answer", "ItemList"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          answer_count: {
            schema_name: "answerCount",
            schema_url: "https://schema.org/answerCount",
            comment_lines: ["The number of answers this question has received."].freeze,
            ranges: ["Integer"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          edu_question_type: {
            schema_name: "eduQuestionType",
            schema_url: "https://schema.org/eduQuestionType",
            comment_lines: ["For questions that are part of learning resources (e.g. Quiz), eduQuestionType indicates the format of question being given. Example: \"Multiple choice\", \"Open ended\", \"Flashcard\"."].freeze,
            ranges: ["Text"].freeze,
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
          }.freeze,
          suggested_answer: {
            schema_name: "suggestedAnswer",
            schema_url: "https://schema.org/suggestedAnswer",
            comment_lines: ["An answer (possibly one of several, possibly incorrect) to a Question, e.g. on a Question/Answer site."].freeze,
            ranges: ["Answer", "ItemList"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The answer(s) that has been accepted as best, typically on a Question/Answer site. Sites vary in their selection mechanisms, e.g. drawing on community opinion and/or the view of the Question author.
      def accepted_answer
        read_property(:accepted_answer)
      end

      # The answer(s) that has been accepted as best, typically on a Question/Answer site. Sites vary in their selection mechanisms, e.g. drawing on community opinion and/or the view of the Question author.
      def accepted_answer=(value)
        write_property(:accepted_answer, value)
      end

      # The number of answers this question has received.
      def answer_count
        read_property(:answer_count)
      end

      # The number of answers this question has received.
      def answer_count=(value)
        write_property(:answer_count, value)
      end

      # For questions that are part of learning resources (e.g. Quiz), eduQuestionType indicates the format of question being given. Example: "Multiple choice", "Open ended", "Flashcard".
      def edu_question_type
        read_property(:edu_question_type)
      end

      # For questions that are part of learning resources (e.g. Quiz), eduQuestionType indicates the format of question being given. Example: "Multiple choice", "Open ended", "Flashcard".
      def edu_question_type=(value)
        write_property(:edu_question_type, value)
      end

      # The parent of a question, answer or item in general. Typically used for Q/A discussion threads e.g. a chain of comments with the first comment being an [[Article]] or other [[CreativeWork]]. See also [[comment]] which points from something to a comment about it.
      def parent_item
        read_property(:parent_item)
      end

      # The parent of a question, answer or item in general. Typically used for Q/A discussion threads e.g. a chain of comments with the first comment being an [[Article]] or other [[CreativeWork]]. See also [[comment]] which points from something to a comment about it.
      def parent_item=(value)
        write_property(:parent_item, value)
      end

      # An answer (possibly one of several, possibly incorrect) to a Question, e.g. on a Question/Answer site.
      def suggested_answer
        read_property(:suggested_answer)
      end

      # An answer (possibly one of several, possibly incorrect) to a Question, e.g. on a Question/Answer site.
      def suggested_answer=(value)
        write_property(:suggested_answer, value)
      end
    end
  end
end
