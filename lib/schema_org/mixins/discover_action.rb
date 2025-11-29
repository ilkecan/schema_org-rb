require "active_support/concern"

module SchemaOrg
  module Mixins
    module DiscoverAction
      extend ActiveSupport::Concern

      include FindAction
    end
  end
end
