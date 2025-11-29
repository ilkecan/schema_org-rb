module SchemaOrg
  # https://schema.org/ConsumeAction
  #
  # The act of ingesting information/resources/food.
  class ConsumeAction < Base
    include Mixins::ConsumeAction
  end
end
