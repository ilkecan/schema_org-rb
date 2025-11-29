require "active_support/concern"

module SchemaOrg
  module Mixins
    module IgnoreAction
      extend ActiveSupport::Concern

      include AssessAction
    end
  end
end
