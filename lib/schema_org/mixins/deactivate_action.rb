require "active_support/concern"

module SchemaOrg
  module Mixins
    module DeactivateAction
      extend ActiveSupport::Concern

      include ControlAction
    end
  end
end
