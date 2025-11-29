require "active_support/concern"

module SchemaOrg
  module Mixins
    module BoardingPolicyType
      extend ActiveSupport::Concern

      include Enumeration
    end
  end
end
