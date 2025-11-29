require "active_support/concern"

module SchemaOrg
  module Mixins
    module AssessAction
      extend ActiveSupport::Concern

      include Action
    end
  end
end
