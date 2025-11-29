require "active_support/concern"

module SchemaOrg
  module Mixins
    module ListenAction
      extend ActiveSupport::Concern

      include ConsumeAction
    end
  end
end
