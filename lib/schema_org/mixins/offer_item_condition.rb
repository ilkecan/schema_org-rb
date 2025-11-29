require "active_support/concern"

module SchemaOrg
  module Mixins
    module OfferItemCondition
      extend ActiveSupport::Concern

      include Enumeration
    end
  end
end
