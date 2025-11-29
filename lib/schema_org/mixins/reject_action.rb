require "active_support/concern"

module SchemaOrg
  module Mixins
    module RejectAction
      extend ActiveSupport::Concern

      include AllocateAction
    end
  end
end
