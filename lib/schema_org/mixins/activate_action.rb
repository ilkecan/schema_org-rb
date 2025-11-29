require "active_support/concern"

module SchemaOrg
  module Mixins
    module ActivateAction
      extend ActiveSupport::Concern

      include ControlAction
    end
  end
end
