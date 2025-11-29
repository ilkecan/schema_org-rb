module SchemaOrg
  # https://schema.org/AggregateRating
  #
  # The average rating based on multiple ratings or reviews.
  class AggregateRating < Base
    include Mixins::AggregateRating
  end
end
