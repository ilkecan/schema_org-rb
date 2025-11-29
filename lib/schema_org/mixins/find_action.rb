require "active_support/concern"

module SchemaOrg
  module Mixins
    module FindAction
      extend ActiveSupport::Concern

      include Action
    end
  end
end
