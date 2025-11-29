require "active_support/concern"

module SchemaOrg
  module Mixins
    module CheckAction
      extend ActiveSupport::Concern

      include FindAction
    end
  end
end
