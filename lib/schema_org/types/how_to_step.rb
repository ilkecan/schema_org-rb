module SchemaOrg
  # https://schema.org/HowToStep
  #
  # A step in the instructions for how to achieve a result. It is an ordered list with HowToDirection and/or HowToTip items.
  class HowToStep
    include Mixins::HowToStep
  end
end
