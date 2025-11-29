require "active_support/concern"

module SchemaOrg
  module Mixins
    module ReactAction
      extend ActiveSupport::Concern

      include AssessAction
    end
  end
end
