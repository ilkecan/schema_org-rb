require "active_support/concern"

module SchemaOrg
  module Mixins
    module Duration
      extend ActiveSupport::Concern

      include Quantity
    end
  end
end
