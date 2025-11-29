require "active_support/concern"

module SchemaOrg
  module Mixins
    module RegisterAction
      extend ActiveSupport::Concern

      include InteractAction
    end
  end
end
