require "active_support/concern"

module SchemaOrg
  module Mixins
    module AcceptAction
      extend ActiveSupport::Concern

      include AllocateAction
    end
  end
end
