require "active_support/concern"

module SchemaOrg
  module Mixins
    module AssignAction
      extend ActiveSupport::Concern

      include AllocateAction
    end
  end
end
