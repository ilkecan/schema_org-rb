require "active_support/concern"

module SchemaOrg
  module Mixins
    module ReadAction
      extend ActiveSupport::Concern

      include ConsumeAction
    end
  end
end
