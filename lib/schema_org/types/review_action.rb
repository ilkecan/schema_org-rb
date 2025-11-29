module SchemaOrg
  # https://schema.org/ReviewAction
  #
  # The act of producing a balanced opinion about the object for an audience. An agent reviews an object with participants resulting in a review.
  class ReviewAction < Base
    include Mixins::ReviewAction
  end
end
