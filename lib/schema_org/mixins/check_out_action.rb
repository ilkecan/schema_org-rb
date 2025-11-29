require "active_support/concern"

module SchemaOrg
  module Mixins
    module CheckOutAction
      extend ActiveSupport::Concern

      include CommunicateAction
    end
  end
end
