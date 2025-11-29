module SchemaOrg
  # https://schema.org/CommentAction
  #
  # The act of generating a comment about a subject.
  class CommentAction < Base
    include Mixins::CommentAction
  end
end
