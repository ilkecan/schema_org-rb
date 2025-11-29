require "active_support/concern"

module SchemaOrg
  module Mixins
    module UseAction
      extend ActiveSupport::Concern

      include ConsumeAction
    end
  end
end
