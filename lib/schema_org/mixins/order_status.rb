require "active_support/concern"

module SchemaOrg
  module Mixins
    module OrderStatus
      extend ActiveSupport::Concern

      include StatusEnumeration
    end
  end
end
