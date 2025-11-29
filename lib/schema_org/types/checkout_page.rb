module SchemaOrg
  # https://schema.org/CheckoutPage
  #
  # Web page type: Checkout page.
  class CheckoutPage < Base
    include Mixins::CheckoutPage
  end
end
