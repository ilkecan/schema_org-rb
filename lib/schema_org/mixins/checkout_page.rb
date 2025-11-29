require "active_support/concern"

module SchemaOrg
  module Mixins
    module CheckoutPage
      extend ActiveSupport::Concern

      include WebPage
    end
  end
end
