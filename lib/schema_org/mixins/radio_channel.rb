require "active_support/concern"

module SchemaOrg
  module Mixins
    module RadioChannel
      extend ActiveSupport::Concern

      include BroadcastChannel
    end
  end
end
