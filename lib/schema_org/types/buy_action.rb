module SchemaOrg
  # https://schema.org/BuyAction
  #
  # The act of giving money to a seller in exchange for goods or services rendered. An agent buys an object, product, or service from a seller for a price. Reciprocal of SellAction.
  class BuyAction
    include Mixins::BuyAction
  end
end
