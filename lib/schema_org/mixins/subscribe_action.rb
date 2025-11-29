require "active_support/concern"

module SchemaOrg
  module Mixins
    module SubscribeAction
      extend ActiveSupport::Concern

      include InteractAction
    end
  end
end
