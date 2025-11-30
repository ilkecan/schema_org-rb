require "active_support/concern"

module SchemaOrg
  module Mixins
    module Question
      extend ActiveSupport::Concern

      include Comment

      included do
        option :accepted_answer, optional: true # The answer(s) that has been accepted as best, typically on a Question/Answer site. Sites vary in their selection mechanisms, e.g. drawing on community opinion and/or the view of the Question author.
        option :answer_count, optional: true # The number of answers this question has received.
        option :parent_item, optional: true # The parent of a question, answer or item in general. Typically used for Q/A discussion threads e.g. a chain of comments with the first comment being an [[Article]] or other [[CreativeWork]]. See also [[comment]] which points from something to a comment about it.
        option :suggested_answer, optional: true # An answer (possibly one of several, possibly incorrect) to a Question, e.g. on a Question/Answer site.
      end
    end
  end
end
