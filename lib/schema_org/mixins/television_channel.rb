require "active_support/concern"

module SchemaOrg
  module Mixins
    module TelevisionChannel
      extend ActiveSupport::Concern

      include BroadcastChannel
    end
  end
end
