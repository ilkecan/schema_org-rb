require "active_support/concern"

module SchemaOrg
  module Mixins
    module ControlAction
      extend ActiveSupport::Concern

      include Action
    end
  end
end
