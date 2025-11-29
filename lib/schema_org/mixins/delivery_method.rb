require "active_support/concern"

module SchemaOrg
  module Mixins
    module DeliveryMethod
      extend ActiveSupport::Concern

      include Enumeration
    end
  end
end
