require "active_support/concern"

module SchemaOrg
  module Mixins
    module ResumeAction
      extend ActiveSupport::Concern

      include ControlAction
    end
  end
end
