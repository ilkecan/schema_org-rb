module SchemaOrg
  # https://schema.org/Rating
  #
  # A rating is an evaluation on a numeric scale, such as 1 to 5 stars.
  class Rating < Base
    include Mixins::Rating
  end
end
