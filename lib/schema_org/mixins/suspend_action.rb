require "active_support/concern"

module SchemaOrg
  module Mixins
    module SuspendAction
      extend ActiveSupport::Concern

      include ControlAction
    end
  end
end
