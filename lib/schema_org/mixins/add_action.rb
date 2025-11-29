require "active_support/concern"

module SchemaOrg
  module Mixins
    module AddAction
      extend ActiveSupport::Concern

      include UpdateAction
    end
  end
end
