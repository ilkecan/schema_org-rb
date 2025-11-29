require "active_support/concern"

module SchemaOrg
  module Mixins
    module EatAction
      extend ActiveSupport::Concern

      include ConsumeAction
    end
  end
end
