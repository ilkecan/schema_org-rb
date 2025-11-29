module SchemaOrg
  # https://schema.org/HowToItem
  #
  # An item used as either a tool or supply when performing the instructions for how to achieve a result.
  class HowToItem < Base
    include Mixins::HowToItem
  end
end
