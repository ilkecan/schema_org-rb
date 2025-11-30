require "active_support/concern"

module SchemaOrg
  module Mixins
    module Answer
      extend ActiveSupport::Concern

      include Comment

      included do
        option :parent_item, optional: true # The parent of a question, answer or item in general. Typically used for Q/A discussion threads e.g. a chain of comments with the first comment being an [[Article]] or other [[CreativeWork]]. See also [[comment]] which points from something to a comment about it.
      end
    end
  end
end
