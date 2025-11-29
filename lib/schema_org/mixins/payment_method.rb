require "active_support/concern"

module SchemaOrg
  module Mixins
    module PaymentMethod
      extend ActiveSupport::Concern

      include Intangible
    end
  end
end
