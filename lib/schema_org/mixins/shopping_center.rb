require "active_support/concern"

module SchemaOrg
  module Mixins
    module ShoppingCenter
      extend ActiveSupport::Concern

      include LocalBusiness
    end
  end
end
