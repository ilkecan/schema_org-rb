require "active_support/concern"

module SchemaOrg
  module Mixins
    module InteractAction
      extend ActiveSupport::Concern

      include Action
    end
  end
end
