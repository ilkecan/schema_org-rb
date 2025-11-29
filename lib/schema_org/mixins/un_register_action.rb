require "active_support/concern"

module SchemaOrg
  module Mixins
    module UnRegisterAction
      extend ActiveSupport::Concern

      include InteractAction
    end
  end
end
