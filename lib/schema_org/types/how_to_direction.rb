module SchemaOrg
  # https://schema.org/HowToDirection
  #
  # A direction indicating a single action to do in the instructions for how to achieve a result.
  class HowToDirection < Base
    include Mixins::HowToDirection
  end
end
