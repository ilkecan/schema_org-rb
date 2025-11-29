require "active_support/concern"

module SchemaOrg
  module Mixins
    module PaymentStatusType
      extend ActiveSupport::Concern

      include StatusEnumeration
    end
  end
end
