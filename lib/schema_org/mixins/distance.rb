require "active_support/concern"

module SchemaOrg
  module Mixins
    module Distance
      extend ActiveSupport::Concern

      include Quantity
    end
  end
end
